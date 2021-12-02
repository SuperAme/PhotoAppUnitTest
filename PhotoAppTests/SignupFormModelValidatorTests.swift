//
//  SignupFormModelValidator.swift
//  PhotoAppTests
//
//  Created by Américo MQ on 02/12/21.
//

import XCTest
@testable import PhotoApp

class SignupFormModelValidatorTests: XCTestCase {
    
    //Arrange
    var sut: SignupFormModelValidator!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = SignupFormModelValidator()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    func testSignUpFormModelValidator_WhenValidFirstNameProvided_ShouldReturnTrue() {
        
        //Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Américo")
        //Assert
        XCTAssertTrue(isFirstNameValid, "The isFirstNameValid() should have returned true but returned FALSE")
    }
    
    func testSignUpFormModelValidator_WhenTooShortFirstNameProvided_ShouldReturnFalse() {
        
        //Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "A")
        //Assert
        XCTAssertFalse(isFirstNameValid, "The isFirstNameValid() should have returned false but returned TRUE")
    }
    
    func testSignUpFormModelValidator_WhenTooLongFirstNameProvided_ShouldReturnFalse() {
        //Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "AmericoMeneses")
        //Assert
        XCTAssertFalse(isFirstNameValid, "The isFirstNameValid() should have returned false but returned TRUE")
    }
    
    func testSignUpFormModelValidator_WhenEqualPasswordsProvided_ShouldReturnTrue() {
        //Act
        let doPasswordsMatch = sut.doPasswordsMatch(password: "12345678", repeatPassword: "12345678")
        //Assert
        XCTAssertTrue(doPasswordsMatch, "The doPasswordsMatch should return true but returned FALSE")
    }
    
    func testSignUpFormModelValidator_WhenNotMatchingPasswordsProvided_ShouldReturnFalse() {
        //Act
        let doPasswordsMatch = sut.doPasswordsMatch(password: "12345678", repeatPassword: "123456789")
        //Assert
        XCTAssertFalse(doPasswordsMatch, "The doPasswordsMatch should return false but returned TRUE")
    }


}
