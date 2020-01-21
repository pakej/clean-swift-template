//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

class ___VARIABLE_sceneName___PresenterTests: XCTestCase {

    // MARK: - Subject Under Test (SUT)

    typealias Models = ___VARIABLE_sceneName___Models
    var sut: ___VARIABLE_sceneName___Presenter!

    // MARK: - Test Lifecycle

    override func setUp() {
        super.setUp()
        setup___VARIABLE_sceneName___Presenter()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    // MARK: - Test Setup

    func setup___VARIABLE_sceneName___Presenter() {
        sut = ___VARIABLE_sceneName___Presenter()
    }

    // MARK: - Test Doubles

    class ___VARIABLE_sceneName___DisplayLogicSpy: ___VARIABLE_sceneName___DisplayLogic {

        // MARK: Spied Methods

        var displayFetchFromLocalDataStoreCalled = false
        var fetchFromLocalDataStoreViewModel: ___VARIABLE_sceneName___Models.FetchFromLocalDataStore.ViewModel!
        func displayFetchFromLocalDataStore(with viewModel: ___VARIABLE_sceneName___Models.FetchFromLocalDataStore.ViewModel) {
            displayFetchFromLocalDataStoreCalled = true
            fetchFromLocalDataStoreViewModel = viewModel
        }

        var displayFetchFromRemoteDataStoreCalled = false
        var fetchFromRemoteDataStoreViewModel: ___VARIABLE_sceneName___Models.FetchFromRemoteDataStore.ViewModel!
        func displayFetchFromRemoteDataStore(with viewModel: ___VARIABLE_sceneName___Models.FetchFromRemoteDataStore.ViewModel) {
            displayFetchFromRemoteDataStoreCalled = true
            fetchFromRemoteDataStoreViewModel = viewModel
        }

        var displayTrackAnalyticsCalled = false
        var trackAnalyticsViewModel: ___VARIABLE_sceneName___Models.TrackAnalytics.ViewModel!
        func displayTrackAnalytics(with viewModel: ___VARIABLE_sceneName___Models.TrackAnalytics.ViewModel) {
            displayTrackAnalyticsCalled = true
            trackAnalyticsViewModel = viewModel
        }

        var displayPerform___VARIABLE_sceneName___Called = false
        var perform___VARIABLE_sceneName___ViewModel: ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.ViewModel!
        func displayPerform___VARIABLE_sceneName___(with viewModel: ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.ViewModel) {
            displayPerform___VARIABLE_sceneName___Called = true
            perform___VARIABLE_sceneName___ViewModel = viewModel
        }
    }

    // MARK: - Tests

    func testPresentFetchFromLocalDataStoreShouldAskTheViewControllerToDisplay() {
        // given
        let spy = ___VARIABLE_sceneName___DisplayLogicSpy()
        sut.viewController = spy
        let response = Models.FetchFromLocalDataStore.Response()

        // when
        sut.presentFetchFromLocalDataStore(with: response)

        // then
        XCTAssertTrue(spy.displayFetchFromLocalDataStoreCalled, "presentFetchFromLocalDataStore(with:) should ask the view controller to display the result")
    }

    func testPresentFetchFromRemoteDataStoreShouldAskTheViewControllerToDisplay() {
        // given
        let spy = ___VARIABLE_sceneName___DisplayLogicSpy()
        sut.viewController = spy
        let response = Models.FetchFromRemoteDataStore.Response()

        // when
        sut.presentFetchFromRemoteDataStore(with: response)

        // then
        XCTAssertTrue(spy.displayFetchFromRemoteDataStoreCalled, "presentFetchFromRemoteDataStore(with:) should ask the view controller to display the result")
    }

    func testPresentTrackAnalyticsShouldAskTheViewControllerToDisplay() {
        // given
        let spy = ___VARIABLE_sceneName___DisplayLogicSpy()
        sut.viewController = spy
        let response = Models.TrackAnalytics.Response()

        // when
        sut.presentTrackAnalytics(with: response)

        // then
        XCTAssertTrue(spy.displayTrackAnalyticsCalled, "presentTrackAnalytics(with:) should ask the view controller to display the result")
    }

    func testPresentPerform___VARIABLE_sceneName___ShouldAskTheViewControllerToDisplay() {
        // given
        let spy = ___VARIABLE_sceneName___DisplayLogicSpy()
        sut.viewController = spy
        let response = Models.Perform___VARIABLE_sceneName___.Response()

        // when
        sut.presentPerform___VARIABLE_sceneName___(with: response)

        // then
        XCTAssertTrue(spy.displayPerform___VARIABLE_sceneName___Called, "presentPerform___VARIABLE_sceneName___(with:) should ask the view controller to display the result")
    }

    func testPresentPerform___VARIABLE_sceneName___ShouldReturnErrorMessageIfThereIsAnError() {
        // given
        let error = Models.___VARIABLE_sceneName___Error(type: .emptyExampleVariable)
        let spy = ___VARIABLE_sceneName___DisplayLogicSpy()
        sut.viewController = spy
        let response = Models.Perform___VARIABLE_sceneName___.Response(error: error)

        // when
        sut.presentPerform___VARIABLE_sceneName___(with: response)

        // then
        XCTAssertNotNil(spy.perform___VARIABLE_sceneName___ViewModel.error?.message, "presentPerform___VARIABLE_sceneName___(with:) should return error message if there is an error")
    }
}
