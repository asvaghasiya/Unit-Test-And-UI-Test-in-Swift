//
//  UI_TestingTests.swift
//  UI_TestingTests
//
//  Created by Artoon Solutions on 11/10/19.
//  Copyright © 2019 Artoon Solutions. All rights reserved.
//

import XCTest
@testable import UI_Testing

class UI_TestingTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    // Login test
    func test_login()  {
        
        let obj = Login()
        
        // Enter Value test cash for login
        obj.email_str = "abc@gmail.com"
        obj.password_str = "Geuest@78"
        
        // Validation True or False Check
        XCTAssert(obj.email_str.isValidEmail())
        XCTAssert(obj.password_str.isValidPassword())
        
    }
    
    // singup test
    func test_singup()  {
        
        let objs_sing = SignUp()
        
        // Enter Value test cash for singup
        objs_sing.email_str = "abc@gmail.com"
        objs_sing.password_str =  "Geuest@78"
        objs_sing.number_str = "+18485913215"
        
        // Validation True or False Check
        XCTAssert(  objs_sing.email_str.isValidEmail())
        XCTAssert(   objs_sing.password_str.isValidPassword())
        XCTAssert(   objs_sing.number_str.isValidPhone())
        
    }
}
