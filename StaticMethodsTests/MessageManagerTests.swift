//
//  MessageManagerTests.swift
//  StaticMethodsTests
//
//  Created by Wade Weitzel on 5/28/20.
//  Copyright © 2020 Wade Weitzel. All rights reserved.
//

import XCTest
@testable import StaticMethods

class MessageManagerTests: XCTestCase {
    var fakeSwiftStaticUtils: FakeSwiftStaticUtils.Type!
    var fakeObjectiveCStaticUtils: FakeObjectiveCStaticUtils.Type!
    
    var messageManager: MessageManager!
    
    override func setUp() {
        messageManager = MessageManager()
        
        fakeSwiftStaticUtils = FakeSwiftStaticUtils.self
        messageManager.swiftStaticUtils = fakeSwiftStaticUtils
        
        fakeObjectiveCStaticUtils = FakeObjectiveCStaticUtils.self
        messageManager.objectiveCStaticUtils = fakeObjectiveCStaticUtils
    }
    
    override func tearDown() {
        fakeObjectiveCStaticUtils.stubbedAppVersion = "NONE"
        
        fakeSwiftStaticUtils = nil
        fakeObjectiveCStaticUtils = nil
    }
    
    func test_getMessage_us() {
        fakeObjectiveCStaticUtils.stubbedAppVersion = "US"
        
        XCTAssertEqual(messageManager.getMessage(), "Testing US")
    }
    
    func test_getMessage_uk() {
        fakeObjectiveCStaticUtils.stubbedAppVersion = "UK"
        
        XCTAssertEqual(messageManager.getMessage(), "Testing UK")
    }
    
    func test_getMessage_somethingElse() {
        fakeObjectiveCStaticUtils.stubbedAppVersion = "NOWHERE"
        
        XCTAssertEqual(messageManager.getMessage(), "Welcome Mystery User")
    }
}
