package com.example.carrent.validation;

import com.example.carrent.exception.InputException;
import com.example.carrent.model.Client;
import com.example.carrent.utilities.VerificatorClone;

import javax.swing.*;
import java.util.HashSet;

public class CreateValidation {
    public static Boolean registerClient(String name,String password,String confirmPassword, HashSet<Client> people){
        HashSet<Client>peoples=people;
        System.out.println(password.equals(confirmPassword));
        if(NullValidation.nullRegister(name, password, confirmPassword) && password.equals(confirmPassword) && VerificatorClone.verifyNameProfile(name,people)) {
            return true;
        }else {
            try {
                throw new InputException("Information is missing");
            }catch (InputException ie){
                JOptionPane.showMessageDialog(null,ie.getMessage()+"Lack of information");
                return false;
            }
        }
    }
}
