package com.woshizhazha120.petmanager.exceptions;

public class ApplicationException extends Exception {
    public ApplicationException(String type, String message) {
        super("[" + type + "] " + message);
    }
}
