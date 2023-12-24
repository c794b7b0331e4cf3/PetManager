package com.woshizhazha120.petmanager.dao;

import com.woshizhazha120.petmanager.entity.Pet;
import com.woshizhazha120.petmanager.exceptions.ApplicationException;

import java.util.List;

public interface PetDao {
    public List<Pet> queryAll() throws ApplicationException;

    public List<Pet> queryByBreed(int breed) throws ApplicationException;

    public boolean add(Pet pet) throws ApplicationException;

    public boolean validateNameUnique(String name) throws ApplicationException;
}
