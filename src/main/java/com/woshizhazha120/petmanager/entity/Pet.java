package com.woshizhazha120.petmanager.entity;

import java.time.LocalDateTime;

public class Pet {
    private long petId;
    private String petName;
    private int petBreed;
    private int petSex;
    private LocalDateTime birthday;
    private String description;

    public long getPetId() {
        return petId;
    }

    public void setPetId(int petId) {
        this.petId = petId;
    }

    public String getPetName() {
        return petName;
    }

    public void setPetName(String petName) {
        this.petName = petName;
    }

    public int getPetBreed() {
        return petBreed;
    }

    public void setPetBreed(int petBreed) {
        this.petBreed = petBreed;
    }

    public int getPetSex() {
        return petSex;
    }

    public void setPetSex(int petSex) {
        this.petSex = petSex;
    }

    public LocalDateTime getBirthday() {
        return birthday;
    }

    public void setBirthday(LocalDateTime birthday) {
        this.birthday = birthday;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
