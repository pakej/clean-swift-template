//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

class ___VARIABLE_sceneName___WorkerTests: XCTestCase {

    // MARK: - Subject Under Test (SUT)

    var sut: ___VARIABLE_sceneName___Worker!

    // MARK: - Test Lifecycle

    override func setUp() {
        super.setUp()
        setup___VARIABLE_sceneName___Worker()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    // MARK: - Test Setup

    func setup___VARIABLE_sceneName___Worker() {
        sut = ___VARIABLE_sceneName___Worker()
    }

    // MARK: - Test Doubles

    // MARK: - Tests

    func testFetchFromRemoteDataStoreShouldReturnAString() {
        // given
        let expectedOutput = ""

        // when
        let actualOutput = sut.fetchFromRemoteDataStore()

        // then
        XCTAssertEqual(actualOutput, expectedOutput, "fetchFromRemoteDataStore() should return a string")
    }

    func testValidateExampleVariableShouldCreateEmptyExampleVariableErrorIfExampleVariableIsNil() {
        // given
        let exampleVariable: String? = nil

        // when
        sut.validate(exampleVariable: exampleVariable)

        // then
        XCTAssertNotNil(sut.error, "validate(exampleVariable:) should create an error if example variable is nil")
        XCTAssertEqual(sut.error?.type, ___VARIABLE_sceneName___Models.___VARIABLE_sceneName___ErrorType.emptyExampleVariable, "validate(exampleVariable:) should create an emptyExampleVariable error if example variable is nil")
    }

    func testValidateExampleVariableShouldCreateEmptyExampleVariableErrorIfExampleVariableIsEmpty() {
        // given
        let exampleVariable = ""

        // when
        sut.validate(exampleVariable: exampleVariable)

        // then
        XCTAssertNotNil(sut.error, "validate(exampleVariable:) should create an error if example variable is empty")
        XCTAssertEqual(sut.error?.type, ___VARIABLE_sceneName___Models.___VARIABLE_sceneName___ErrorType.emptyExampleVariable, "validate(exampleVariable:) should create an emptyExampleVariable error if example variable is empty")
    }

    func testValidateExampleVariableShouldNotCreateErrorIfExampleVariableIsNotNilOrEmpty() {
        // given
        let exampleVariable = "Example string."

        // when
        sut.validate(exampleVariable: exampleVariable)

        // then
        XCTAssertNil(sut.error, "validate(exampleVariable:) should not create an error if example variable is not nil or empty")
    }

    func testTrackAnalyticsShouldTrackAnalyticsIfEventIsScreenView() {
        // given
        let event: ___VARIABLE_sceneName___Models.AnalyticsEvents = .screenView

        // when
        sut.trackAnalytics(event: event)

        // then
        // assert something here based on use case
    }

    func testPerform___VARIABLE_sceneName___ShouldAlwaysReturnTrueAndWithoutErrorsResponse() {
        // given
        var response: (isSuccessful: Bool, error: ___VARIABLE_sceneName___Models.Error<___VARIABLE_sceneName___Models.___VARIABLE_sceneName___ErrorType>?)!

        // when
        let expect = expectation(description: "Wait for perform___VARIABLE_sceneName___(completion:) to return")
        sut.perform___VARIABLE_sceneName___ { (isSuccessful, error) in
            response = (isSuccessful, error)
            expect.fulfill()
        }
        waitForExpectations(timeout: 1)

        // then
        XCTAssertTrue(response.isSuccessful, "perform___VARIABLE_sceneName___(completion:) should always return true")
        XCTAssertNil(response.error, "perform___VARIABLE_sceneName___(completion:) should not return errors")
    }
}
