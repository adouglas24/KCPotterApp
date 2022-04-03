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
        if (loginButton.exists) {
            loginButton.tap()
        }
        
        let tabBar = app.tabBars["Tab Bar"]
        
        let calendarButton = tabBar.buttons["Calendar"]
        if (calendarButton.exists) {
            calendarButton.tap()
        }
        let calendarAttachment = XCTAttachment(screenshot: app.screenshot())
        calendarAttachment.name = "Calendar Screen"
        calendarAttachment.lifetime = .keepAlways
        add(calendarAttachment)
        
        let resourcesButton = tabBar.buttons["Resources"]
        if (resourcesButton.exists) {
            resourcesButton.tap()
        }
        let resourcesAttachment = XCTAttachment(screenshot: app.screenshot())
        resourcesAttachment.name = "Resources Screen"
        resourcesAttachment.lifetime = .keepAlways
        add(resourcesAttachment)
        
        let affButton = app.buttons["Community Affliation:, I am a ..."]
        if (affButton.exists) {
            affButton.tap()
        }
        
        let resButton = app.buttons["Resource Type:, I am looking for ..."]
        if (resButton.exists) {
            resButton.tap()
        }
        
        let idButton = app.buttons["LGBTQ+ Identity:, I identify as ..."]
        if (idButton.exists) {
            idButton.tap()
        }
        
        let submitButton = app.buttons["Get assistance"]
        if (submitButton.exists) {
            submitButton.tap()
        }
        
        let bathroomButton = tabBar.buttons["Bathroom"]
        if (bathroomButton.exists) {
            bathroomButton.tap()
        }
        let bathroomAttachment = XCTAttachment(screenshot: app.screenshot())
        bathroomAttachment.name = "Bathroom Screen"
        bathroomAttachment.lifetime = .keepAlways
        add(bathroomAttachment)
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
