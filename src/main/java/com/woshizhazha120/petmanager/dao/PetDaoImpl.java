package com.woshizhazha120.petmanager.dao;

import com.woshizhazha120.petmanager.entity.Pet;
import com.woshizhazha120.petmanager.exceptions.ApplicationException;

import java.util.List;

public class PetDaoImpl extends Dao<Pet> implements PetDao {
    @Override
    public List<Pet> queryAll() throws ApplicationException {
        return executeQuery("SELECT * FROM pet", Pet.class);
    }

    @Override
    public List<Pet> queryByBreed(int breed) throws ApplicationException {
        return executeQuery("SELECT * FROM pet WHERE petBreed = ?", Pet.class, breed);
    }

    @Override
    public boolean add(Pet pet) throws ApplicationException {
        return executeUpdate("INSERT INTO pet (petName, petBreed, petSex, birthday, description) VALUES (?, ?, ?, ?, ?)", pet.getPetName(), pet.getPetBreed(), pet.getPetSex(), pet.getBirthday(), pet.getDescription());
    }

    @Override
    public boolean validateNameUnique(String name) throws ApplicationException {
        return !executeQuery("SELECT * FROM pet WHERE petName = ?", Pet.class, name).isEmpty();
    }
}
