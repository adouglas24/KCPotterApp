//
//  KC_PotterTests.swift
//  KC PotterTests
//
//  Created by Daniel Li on 2/28/22.
//  Modified by Zifeng Liang on 3/31/22.

import XCTest
@testable import KC_Potter

class KC_PotterTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    func testQuestionsWorks() {
        // Arrange: create the necessary dependencies.
        // Act: call my API, using the dependencies created above.
    }
    
    func testLogIn() {
        // to do once system is setup
    }
    
    func testDatabase() {
        
        let task1 = QsTask()
        XCTAssertEqual(task1.name, "")
        XCTAssertEqual(task1.status, "")
        task1.name = "ann"
        XCTAssertEqual(task1.name, "ann")
        
        let task2 = QsTask()
        task2.name = "something"
        XCTAssertEqual(task2.name, "something")
        XCTAssertEqual(task1.status, "")
        
        let task3 = QsTask(name: "somethingelse", owner: "me", status: "completed")
        // can't set owner, an optional field in task initialization
        XCTAssertEqual(task3.name, "somethingelse")
        task3.owner = "me"
        XCTAssertEqual(task3.owner, "me")
        XCTAssertEqual(task3.status, "completed")
        
        //
        //        realm.add(task1)
        //        XCTAssertEqual(realm.count,1)
        //        realm.add(task2)
        //        XCTAssertEqual(realm.count,2)
        //        realm.add(task3)
        //        XCTAssertEqual(realm.count,3)
        //
        //        realm.deleteAll()
        //        XCTAssertEqual(realm.count,0)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
