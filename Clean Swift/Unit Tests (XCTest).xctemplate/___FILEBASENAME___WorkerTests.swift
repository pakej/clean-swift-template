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

    typealias Models = ___VARIABLE_sceneName___Models
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

    func testValidateExampleVariableShouldCreateEmptyExampleVariableErrorIfExampleVariableIsNil() {
        // given
        let exampleVariable: String? = nil

        // when
        let error = sut.validate(exampleVariable: exampleVariable)

        // then
        XCTAssertNotNil(error, "validate(exampleVariable:) should create an error if example variable is nil")
        XCTAssertEqual(error?.type, Models.___VARIABLE_sceneName___ErrorType.emptyExampleVariable, "validate(exampleVariable:) should create an emptyExampleVariable error if example variable is nil")
    }

    func testValidateExampleVariableShouldCreateEmptyExampleVariableErrorIfExampleVariableIsEmpty() {
        // given
        let exampleVariable = ""

        // when
        let error = sut.validate(exampleVariable: exampleVariable)

        // then
        XCTAssertNotNil(error, "validate(exampleVariable:) should create an error if example variable is empty")
        XCTAssertEqual(error?.type, Models.___VARIABLE_sceneName___ErrorType.emptyExampleVariable, "validate(exampleVariable:) should create an emptyExampleVariable error if example variable is empty")
    }

    func testValidateExampleVariableShouldNotCreateErrorIfExampleVariableIsNotNilOrEmpty() {
        // given
        let exampleVariable = "Example string."

        // when
        let error = sut.validate(exampleVariable: exampleVariable)

        // then
        XCTAssertNil(error, "validate(exampleVariable:) should not create an error if example variable is not nil or empty")
    }
}
