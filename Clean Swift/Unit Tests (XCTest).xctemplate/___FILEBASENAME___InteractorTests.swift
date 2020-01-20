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

    typealias Models = ___VARIABLE_sceneName___Models
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

        var presentFetchFromLocalDataStoreCalled = false
        var fetchFromLocalDataStoreResponse: ___VARIABLE_sceneName___Models.FetchFromLocalDataStore.Response!
        func presentFetchFromLocalDataStore(with response: ___VARIABLE_sceneName___Models.FetchFromLocalDataStore.Response) {
            presentFetchFromLocalDataStoreCalled = true
            fetchFromLocalDataStoreResponse = response
        }

        var presentFetchFromRemoteDataStoreCalled = false
        var fetchFromRemoteDataStoreResponse: ___VARIABLE_sceneName___Models.FetchFromRemoteDataStore.Response!
        func presentFetchFromRemoteDataStore(with response: ___VARIABLE_sceneName___Models.FetchFromRemoteDataStore.Response) {
            presentFetchFromRemoteDataStoreCalled = true
            fetchFromRemoteDataStoreResponse = response
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
        override func validate(exampleVariable: String?) -> Models.___VARIABLE_sceneName___Error? {
            validateExampleVariableCalled = true
            return super.validate(exampleVariable: exampleVariable)
        }
    }

    // MARK: - Tests

    func testFetchFromLocalDataStoreShouldAskPresenterToFormat() {
        // given
        let spy = ___VARIABLE_sceneName___PresentationLogicSpy()
        sut.presenter = spy
        let request = Models.FetchFromLocalDataStore.Request()

        // when
        sut.fetchFromLocalDataStore(with: request)

        // then
        XCTAssertTrue(spy.presentFetchFromLocalDataStoreCalled, "fetchFromLocalDataStore(with:) should ask the presenter to format the result")
    }

    func testTrackAnalyticsShouldAskPresenterToFormat() {
        // given
        let spy = ___VARIABLE_sceneName___PresentationLogicSpy()
        sut.presenter = spy
        let request = Models.TrackAnalytics.Request(event: .screenView)

        // when
        sut.trackAnalytics(with: request)

        // then
        XCTAssertTrue(spy.presentTrackAnalyticsCalled, "trackAnalytics(with:) should ask the presenter to format the result")
    }

    func testPerform___VARIABLE_sceneName___ShouldValidateExampleVariable() {
        // given
        let spy = ___VARIABLE_sceneName___WorkerSpy()
        sut.worker = spy
        let request = Models.Perform___VARIABLE_sceneName___.Request()

        // when
        sut.perform___VARIABLE_sceneName___(with: request)

        // then
        XCTAssertTrue(spy.validateExampleVariableCalled, "perform___VARIABLE_sceneName___(with:) should ask the worker to validate the example variable")
    }

    func testPerform___VARIABLE_sceneName___ShouldAskPresenterToFormat() {
        // given
        let spy = ___VARIABLE_sceneName___PresentationLogicSpy()
        sut.presenter = spy
        let request = Models.Perform___VARIABLE_sceneName___.Request()

        // when
        let expect = expectation(description: "Wait for perform___VARIABLE_sceneName___(with:) to return")
        sut.perform___VARIABLE_sceneName___(with: request)
        expect.fulfill()
        waitForExpectations(timeout: 1)

        // then
        XCTAssertTrue(spy.presentPerform___VARIABLE_sceneName___Called, "perform___VARIABLE_sceneName___(with:) should ask the presenter to format the result")
    }
}
