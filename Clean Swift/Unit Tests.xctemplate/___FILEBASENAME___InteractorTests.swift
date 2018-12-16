//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

class ___VARIABLE_sceneName___InteractorTests: XCTestCase {

    // MARK: - Subject Under Test (SUT)

    var sut: ___VARIABLE_sceneName___Interactor!

    // MARK: - Test Lifecycle

    override func setUp() {
        super.setUp()
        setup___VARIABLE_sceneName___Interactor()
    }

    override func tearDown() {
        super.tearDown()
    }

    // MARK: - Test Setup

    func setup___VARIABLE_sceneName___Interactor() {
        sut = ___VARIABLE_sceneName___Interactor()
    }

    // MARK: - Test Doubles

    class ___VARIABLE_sceneName___PresentationLogicSpy: ___VARIABLE_sceneName___PresentationLogic {

        // MARK: Spied Methods

        var presentFetchFromDataStoreCalled = false
        func presentFetchFromDataStore(with response: ___VARIABLE_sceneName___Models.FetchFromDataStore.Response) {
            presentFetchFromDataStoreCalled = true
        }

        var presentPerform___VARIABLE_sceneName___Called = false
        func presentPerform___VARIABLE_sceneName___(with response: ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Response) {
            presentPerform___VARIABLE_sceneName___Called = true
        }
    }
    
    class ___VARIABLE_sceneName___WorkerSpy: ___VARIABLE_sceneName___Worker {
        
        // MARK: Spied Methods
        
        var validateExampleVariableCalled = false
        override func validate(exampleVariable: String?) {
            super.validate(exampleVariable: exampleVariable)
            validateExampleVariableCalled = true
        }
        
        var perform___VARIABLE_sceneName___Called = false
        override func perform___VARIABLE_sceneName___(completion: @escaping (Bool, ___VARIABLE_sceneName___Models.Error<___VARIABLE_sceneName___Worker.ErrorType>?) -> Void) {
            super.perform___VARIABLE_sceneName___(completion: completion)
            perform___VARIABLE_sceneName___Called = true
        }
    }

    // MARK: - Tests

    func testFetchFromDataStoreShouldAskPresenterToFormat() {
        // given
        let request = ___VARIABLE_sceneName___Models.FetchFromDataStore.Request()
        let spy = ___VARIABLE_sceneName___PresentationLogicSpy()
        sut.presenter = spy

        // when
        sut.fetchFromDataStore(with: request)

        // then
        XCTAssertTrue(spy.presentFetchFromDataStoreCalled, "fetchFromDataStore(with:) should ask the presenter to format the result")
    }

    func testPerform___VARIABLE_sceneName___ShouldValidateExampleVariable() {
        // given
        let request = ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Request()
        let spy = ___VARIABLE_sceneName___WorkerSpy()
        sut.worker = spy

        // when
        sut.perform___VARIABLE_sceneName___(with: request)

        // then
        XCTAssertTrue(spy.validateExampleVariableCalled, "perform___VARIABLE_sceneName___(with:) should ask the worker to validate the example variable")
    }
    
    func testPerform___VARIABLE_sceneName___ShouldAskPresenterToFormat() {
        // given
        let request = ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Request()
        let spy = ___VARIABLE_sceneName___PresentationLogicSpy()
        sut.presenter = spy
        
        // when
        sut.perform___VARIABLE_sceneName___(with: request)
        
        // then
        XCTAssertTrue(spy.presentPerform___VARIABLE_sceneName___Called, "perform___VARIABLE_sceneName___(with:) should ask the presenter to format the result")
    }
    
    func testPerform___VARIABLE_sceneName___ShouldNotAskWorkerToPerform___VARIABLE_sceneName___IfThereIsAnError() {
        // given
        let request = ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Request(exampleVariable: nil)
        let spy = ___VARIABLE_sceneName___WorkerSpy()
        sut.worker = spy
        
        // when
        sut.perform___VARIABLE_sceneName___(with: request)
        
        // then
        XCTAssertFalse(spy.perform___VARIABLE_sceneName___Called, "perform___VARIABLE_sceneName___(with:) should not ask worker to perform ___VARIABLE_sceneName___ if there is an error")
    }
    
    func testPerform___VARIABLE_sceneName___ShouldAskWorkerToPerform___VARIABLE_sceneName___IfThereIsNoError() {
        // given
        let request = ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Request(exampleVariable: "Example string.")
        let spy = ___VARIABLE_sceneName___WorkerSpy()
        sut.worker = spy
        
        // when
        sut.perform___VARIABLE_sceneName___(with: request)
        
        // then
        XCTAssertTrue(spy.perform___VARIABLE_sceneName___Called, "perform___VARIABLE_sceneName___(with:) should ask worker to perform ___VARIABLE_sceneName___ if there is no error")
    }
}
