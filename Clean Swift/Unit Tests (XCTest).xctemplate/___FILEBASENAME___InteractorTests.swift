//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
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
        sut = nil
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
        var fetchFromDataStoreResponse: ___VARIABLE_sceneName___Models.FetchFromDataStore.Response!
        func presentFetchFromDataStore(with response: ___VARIABLE_sceneName___Models.FetchFromDataStore.Response) {
            presentFetchFromDataStoreCalled = true
            fetchFromDataStoreResponse = response
        }

        var presentTrackAnalyticsCalled = false
        var trackAnalyticsResponse: ___VARIABLE_sceneName___Models.TrackAnalytics.Response!
        func presentTrackAnalytics(with response: ___VARIABLE_sceneName___Models.TrackAnalytics.Response) {
            presentTrackAnalyticsCalled = true
            trackAnalyticsResponse = response
        }

        var presentPerform___VARIABLE_sceneName___Called = false
        var perform___VARIABLE_sceneName___Response: ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Response!
        func presentPerform___VARIABLE_sceneName___(with response: ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Response) {
            presentPerform___VARIABLE_sceneName___Called = true
            perform___VARIABLE_sceneName___Response = response
        }
    }

    class ___VARIABLE_sceneName___WorkerSpy: ___VARIABLE_sceneName___Worker {

        // MARK: Spied Methods

        var validateExampleVariableCalled = false
        override func validate(exampleVariable: String?) {
            super.validate(exampleVariable: exampleVariable)
            validateExampleVariableCalled = true
        }

        var trackAnalyticsCalled = false
        override func trackAnalytics(event: ___VARIABLE_sceneName___Models.AnalyticsEvents) {
            super.trackAnalytics(event: event)
            trackAnalyticsCalled = true
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
        let spy = ___VARIABLE_sceneName___PresentationLogicSpy()
        sut.presenter = spy
        let request = ___VARIABLE_sceneName___Models.FetchFromDataStore.Request()

        // when
        sut.fetchFromDataStore(with: request)

        // then
        XCTAssertTrue(spy.presentFetchFromDataStoreCalled, "fetchFromDataStore(with:) should ask the presenter to format the result")
    }

    func testTrackAnalyticsShouldAskWorkerToTrackAnalytics() {
        // given
        let spy = ___VARIABLE_sceneName___WorkerSpy()
        sut.worker = spy
        let request = ___VARIABLE_sceneName___Models.TrackAnalytics.Request(event: .screenView)

        // when
        sut.trackAnalytics(with: request)

        // then
        XCTAssertTrue(spy.trackAnalyticsCalled, "trackAnalytics(with:) should ask the worker to track analytics")
    }

    func testTrackAnalyticsShouldAskPresenterToFormat() {
        // given
        let spy = ___VARIABLE_sceneName___PresentationLogicSpy()
        sut.presenter = spy
        let request = ___VARIABLE_sceneName___Models.TrackAnalytics.Request(event: .screenView)

        // when
        sut.trackAnalytics(with: request)

        // then
        XCTAssertTrue(spy.presentTrackAnalyticsCalled, "trackAnalytics(with:) should ask the presenter to format the result")
    }

    func testPerform___VARIABLE_sceneName___ShouldValidateExampleVariable() {
        // given
        let spy = ___VARIABLE_sceneName___WorkerSpy()
        sut.worker = spy
        let request = ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Request()

        // when
        sut.perform___VARIABLE_sceneName___(with: request)

        // then
        XCTAssertTrue(spy.validateExampleVariableCalled, "perform___VARIABLE_sceneName___(with:) should ask the worker to validate the example variable")
    }

    func testPerform___VARIABLE_sceneName___ShouldNotAskWorkerToPerform___VARIABLE_sceneName___IfThereAreErrors() {
        // given
        let spy = ___VARIABLE_sceneName___WorkerSpy()
        sut.worker = spy
        let request = ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Request(exampleVariable: nil)

        // when
        sut.perform___VARIABLE_sceneName___(with: request)

        // then
        XCTAssertFalse(spy.perform___VARIABLE_sceneName___Called, "perform___VARIABLE_sceneName___(with:) should not ask the worker to perform ___VARIABLE_sceneName___")
    }

    func testPerform___VARIABLE_sceneName___ShouldAskWorkerToPerform___VARIABLE_sceneName___IfThereAreNoErrors() {
        // given
        let spy = ___VARIABLE_sceneName___WorkerSpy()
        sut.worker = spy
        let request = ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Request(exampleVariable: "Example string.")

        // when
        sut.perform___VARIABLE_sceneName___(with: request)

        // then
        XCTAssertTrue(spy.perform___VARIABLE_sceneName___Called, "perform___VARIABLE_sceneName___(with:) should ask the worker to perform ___VARIABLE_sceneName___")
    }

    func testPerform___VARIABLE_sceneName___ShouldAskPresenterToFormat() {
        // given
        let spy = ___VARIABLE_sceneName___PresentationLogicSpy()
        sut.presenter = spy
        let request = ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Request()

        // when
        let expect = expectation(description: "Wait for perform___VARIABLE_sceneName___(with:) to return")
        sut.perform___VARIABLE_sceneName___(with: request)
        expect.fulfill()
        waitForExpectations(timeout: 1)

        // then
        XCTAssertTrue(spy.presentPerform___VARIABLE_sceneName___Called, "perform___VARIABLE_sceneName___(with:) should ask the presenter to format the result")
    }
}
