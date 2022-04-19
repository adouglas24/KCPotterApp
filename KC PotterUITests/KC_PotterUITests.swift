//
//  KC_PotterUITests.swift
//  KC PotterUITests
//
//  Created by Daniel Li on 2/28/22.
//  Modified by Zifeng Liang on 3/31/22.

import XCTest

class KC_PotterUITests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        XCTAssertTrue(app.waitForExistence(timeout: 10))
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let loginButton = app.buttons["LOGIN"]
        XCTAssertTrue(loginButton.exists)
        if (loginButton.exists) {
            loginButton.tap()
        }
        
        let tabBar = app.tabBars["Tab Bar"]
        
        let homeButton = tabBar.buttons["Home"]
        XCTAssertTrue(homeButton.exists)
        if (homeButton.exists) {
            homeButton.tap()
        }
        let homeAttachment = XCTAttachment(screenshot: app.screenshot())
        homeAttachment.name = "Home Screen"
        homeAttachment.lifetime = .keepAlways
        add(homeAttachment)
        
        let calendarButton = tabBar.buttons["Calendar"]
        XCTAssertTrue(calendarButton.exists)
        if (calendarButton.exists) {
            calendarButton.tap()
        }
        let calendarAttachment = XCTAttachment(screenshot: app.screenshot())
        calendarAttachment.name = "Calendar Screen"
        calendarAttachment.lifetime = .keepAlways
        add(calendarAttachment)
        
        let resourcesButton = tabBar.buttons["Resources"]
        XCTAssertTrue(resourcesButton.exists)
        if (resourcesButton.exists) {
            resourcesButton.tap()
        }
        let resourcesAttachment = XCTAttachment(screenshot: app.screenshot())
        resourcesAttachment.name = "Resources Screen"
        resourcesAttachment.lifetime = .keepAlways
        add(resourcesAttachment)
        
        let bathroomButton = tabBar.buttons["Bathroom"]
        XCTAssertTrue(bathroomButton.exists)
        if (bathroomButton.exists) {
            bathroomButton.tap()
        }
        let bathroomAttachment = XCTAttachment(screenshot: app.screenshot())
        bathroomAttachment.name = "Bathroom Screen"
        bathroomAttachment.lifetime = .keepAlways
        add(bathroomAttachment)
        
        // flaky tests below
        //        let affButton = app.buttons["Community Affliation:, I am a ..."]
        //        XCTAssertTrue(affButton.exists)
        //        if (affButton.exists) {
        //            affButton.tap()
        //        }
        //
        //        let resButton = app.buttons["Resource Type:, I am looking for ..."]
        //        XCTAssertTrue(resButton.exists)
        //        if (resButton.exists) {
        //            resButton.tap()
        //        }
        //
        //        let idButton = app.buttons["LGBTQ+ Identity:, I identify as ..."]
        //        XCTAssertTrue(idButton.exists)
        //        if (idButton.exists) {
        //            idButton.tap()
        //        }
        //
        
        //        app.buttons["Get assistance"].tap()
        //        app.buttons["Community Affiliation:, I am a ..."].tap()
        
        
        //        let app = XCUIApplication()
        //        app.tabBars["Tab Bar"].buttons["Resources"].tap()
        //        app/*@START_MENU_TOKEN@*/.buttons["pickAff"]/*[[".buttons[\"Community Affliation\"]",".buttons[\"pickAff\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        //XCTAssert(app.pickers("pickAff").exists)
        
        // app.pickerWheels.element(boundBy: 0).adjust(toPickerWheelValue: "Community")
        
        // app.pickers.element(boundBy: 0).swipeUp()
        // XCTAssert(app.staticTexts["Selected: Black"].exists)
        
        
        
        //        resourceTypeButton.tap()
        //        let medical = app.collectionViews/*@START_MENU_TOKEN@*/.buttons["Medical/Health"]/*[[".cells.buttons[\"Medical\/Health\"]",".buttons[\"Medical\/Health\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        //        XCTAssertTrue(medical.exists)
        
        
        //        let submitButton = app.buttons["Get assistance"]
        //        XCTAssertTrue(submitButton.exists)
        //        if (submitButton.exists) {
        //            submitButton.tap()
        //        }
    }
    
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
