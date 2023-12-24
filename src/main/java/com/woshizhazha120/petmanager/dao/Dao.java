package com.woshizhazha120.petmanager.dao;

import com.woshizhazha120.petmanager.exceptions.ApplicationException;

import java.io.IOException;
import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

public abstract class Dao<T> {
    protected Connection getConnection() throws ApplicationException {
        Properties properties = new Properties();

        try {
            properties.load(this.getClass().getClassLoader().getResourceAsStream("database.properties"));
        } catch (IOException | NullPointerException e) {
            throw new ApplicationException("配置", e.getMessage());
        }

        try {
            Class.forName(properties.getProperty("driver"));
        } catch (ClassNotFoundException e) {
            throw new ApplicationException("类", e.getMessage());
        }

        try {
            return DriverManager.getConnection("jdbc:" + properties.getProperty("type") + "://" + properties.getProperty("host") + ":" + properties.getProperty("port") + "/" + properties.getProperty("database"), properties.getProperty("user"), properties.getProperty("password"));
        } catch (SQLException e) {
            throw new ApplicationException("SQL", e.getMessage());
        }
    }

    protected T loadInto(Class<T> target, ResultSet data) throws ApplicationException {
        try {
            T instance = target.getDeclaredConstructor().newInstance();

            for (Field field : target.getDeclaredFields()) {
                field.setAccessible(true);
                field.set(instance, data.getObject(field.getName()));
            }

            return instance;
        } catch (Exception e) {
            throw new ApplicationException("载入", e.getMessage());
        }
    }

    protected boolean executeUpdate(String sql, Object... params) throws ApplicationException {
        try (var connection = getConnection()) {
            try (var statement = connection.prepareStatement(sql)) {
                for (int i = 0; i < params.length; i++) {
                    statement.setObject(i + 1, params[i]);
                }

                return statement.executeUpdate() > 0;
            }
        } catch (SQLException e) {
            throw new ApplicationException("SQL", e.getMessage());
        }
    }

    protected List<T> executeQuery(String sql, Class<T> target, Object... params) throws ApplicationException {
        List<T> result = new ArrayList<>();

        try (var connection = getConnection()) {
            try (var statement = connection.prepareStatement(sql)) {
                for (int i = 0; i < params.length; i++) {
                    statement.setObject(i + 1, params[i]);
                }

                ResultSet data = statement.executeQuery();

                while (data.next()) {
                    result.add(loadInto(target, data));
                }
            }
        } catch (SQLException e) {
            throw new ApplicationException("SQL", e.getMessage());
        }

        return result;
    }
}
