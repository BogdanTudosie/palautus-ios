//
//  palautusUITests.swift
//  palautusUITests
//
//  Created by Giuseppe on 10.2.2025.
//

import XCTest

final class PalautusUITests: XCTestCase {

    override func setUpWithError() throws {
        super.setUp()
        continueAfterFailure = false
        
        let app = XCUIApplication()
        app.launchArguments = ["-ui-testing"]
        app.launchEnvironment = [
            "UITESTING": "1",
            "APP_BUNDLE_ID": "fi.hgb.palautus"
        ]
        app.launch()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called before the invocation of each test method in the class.
    }

    @MainActor
    func testExample() throws {
        // Remove duplicate launch
        let app = XCUIApplication()
        
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertTrue(app.exists)
    }

    @MainActor
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                let app = XCUIApplication()
                app.launch()
            }
        }
    }
}
