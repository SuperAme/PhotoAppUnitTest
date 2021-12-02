//
//  SignupFormModelValidator.swift
//  PhotoApp
//
//  Created by Américo MQ on 02/12/21.
//

import Foundation

class SignupFormModelValidator {
    func isFirstNameValid(firstName: String) -> Bool {
        var returnValue = true
        
        if firstName.count < SignupConstants.firstNameMinLenght || firstName.count > SignupConstants.firstNameMaxLenght {
            returnValue = false
        }
        
        return returnValue
    }
    
    func doPasswordsMatch(password: String, repeatPassword: String) -> Bool {
        return password == repeatPassword
    }
}
