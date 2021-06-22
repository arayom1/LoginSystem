/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author Arayom
 */
public class InputData {
    private String firstName;
    private String lastName;
    private String email;
    private String gender;
    
    public InputData(){
    
    }
    
    public String getFirstName(){
        return firstName;
    }
    
    public void setFirstName(String fisrtName) {
        this.firstName = fisrtName;	
    }
    
    public String getLastName(){
        return lastName;
    }
    
    public void setLastName(String lastName) {
        this.lastName = lastName;	
    }
    
    public String getEmail(){
        return email;
    }
    
    public void setEmail(String email) {
        this.email = email;	
    }
    
    public String getGender(){
        return gender;
    }
    
    public void setGender(String gender) {
        this.gender = email;	
    }
}
