//
//  UI_TestingUITests.swift
//  UI_TestingUITests
//
//  Created by Artoon Solutions on 11/10/19.
//  Copyright © 2019 Artoon Solutions. All rights reserved.
//

import XCTest

class UI_TestingUITests: XCTestCase {

    let app = XCUIApplication()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        app.launch()
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFlow() {
        print("Flow testing")
        
        // open sign up screen
        let app = XCUIApplication()
        let emailTextField = app.textFields["Email"]
        emailTextField.tap()
        emailTextField.typeText("info@artoon.in")
        
        let phoneTextField = app.textFields["Phone"]
        phoneTextField.tap()
        phoneTextField.typeText("0123456789")
        
        let passwordSecureTextField = app.secureTextFields["Password"]
        passwordSecureTextField.tap()
        passwordSecureTextField.typeText("Artoon@123")
        
        app.buttons["Sign up"].tap()
        
        
        // open login screen
        emailTextField.tap()
        emailTextField.typeText("info@artoon.in")
        
        passwordSecureTextField.tap()
        passwordSecureTextField.typeText("Artoon@123")
        
        app.buttons["Sign in"].staticTexts["Sign in"].tap()
        
        // open table screen
        app.buttons["arrow.clockwise"].tap()
        
        let myuniquetableviewidentifierTable2 = app.tables["myUniqueTableViewIdentifier"]
        let thisIsRowNumber17StaticText = myuniquetableviewidentifierTable2/*@START_MENU_TOKEN@*/.staticTexts["This is row number 17"]/*[[".cells[\"myCell_16\"].staticTexts[\"This is row number 17\"]",".staticTexts[\"This is row number 17\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        
        let thisIsRowNumber15StaticText = myuniquetableviewidentifierTable2/*@START_MENU_TOKEN@*/.staticTexts["This is row number 15"]/*[[".cells[\"myCell_14\"].staticTexts[\"This is row number 15\"]",".staticTexts[\"This is row number 15\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
                
        let myuniquetableviewidentifierTable = myuniquetableviewidentifierTable2
                
        myuniquetableviewidentifierTable.staticTexts["This is row number 6"].swipeUp()
        myuniquetableviewidentifierTable.staticTexts["This is row number 2"].tap()
        myuniquetableviewidentifierTable.staticTexts["This is row number 3"].tap()
        myuniquetableviewidentifierTable.staticTexts["This is row number 4"].tap()
        myuniquetableviewidentifierTable.staticTexts["This is row number 6"].tap()
        myuniquetableviewidentifierTable.staticTexts["This is row number 9"].tap()
        thisIsRowNumber17StaticText.tap()
        thisIsRowNumber15StaticText.tap()
        myuniquetableviewidentifierTable.staticTexts["This is row number 2"].tap()
        myuniquetableviewidentifierTable.staticTexts["This is row number 7"].tap()
        myuniquetableviewidentifierTable.staticTexts["This is row number 8"].tap()
        myuniquetableviewidentifierTable.staticTexts["This is row number 1"].tap()
        thisIsRowNumber17StaticText.tap()
        thisIsRowNumber15StaticText.tap()
        myuniquetableviewidentifierTable.staticTexts["This is row number 17"].swipeDown()
        
        let thisIsRowNumber8StaticText = myuniquetableviewidentifierTable.staticTexts["This is row number 8"]
        thisIsRowNumber8StaticText.tap()
        
        let thisIsRowNumber6StaticText = myuniquetableviewidentifierTable.staticTexts["This is row number 6"]
        thisIsRowNumber6StaticText.tap()
        
        let thisIsRowNumber4StaticText = myuniquetableviewidentifierTable.staticTexts["This is row number 4"]
        thisIsRowNumber4StaticText.tap()
        myuniquetableviewidentifierTable.staticTexts["This is row number 3"].tap()
        myuniquetableviewidentifierTable.staticTexts["This is row number 10"].tap()
        thisIsRowNumber8StaticText.tap()
        thisIsRowNumber6StaticText.tap()
        thisIsRowNumber4StaticText.tap()
                
    }
    
}
