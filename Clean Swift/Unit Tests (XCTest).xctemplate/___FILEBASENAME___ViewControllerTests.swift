//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

class ___VARIABLE_sceneName___ViewControllerTests: XCTestCase {

    // MARK: - Subject Under Test (SUT)

    typealias Models = ___VARIABLE_sceneName___Models
    var sut: ___VARIABLE_sceneName___ViewController!
    var window: UIWindow!

    // MARK: - Test Lifecycle

    override func setUp() {
        super.setUp()
        window = UIWindow()
        setup___VARIABLE_sceneName___ViewController()
    }

    override func tearDown() {
        window = nil
        sut = nil
        super.tearDown()
    }

    // MARK: - Test Setup

    func setup___VARIABLE_sceneName___ViewController() {
        let bundle = Bundle.main
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        sut = storyboard.instantiateViewController(withIdentifier: "___VARIABLE_sceneName___ViewController") as? ___VARIABLE_sceneName___ViewController
    }

    func loadView() {
        window.addSubview(sut.view)
        RunLoop.current.run(until: Date())
    }

    // MARK: - Test Doubles

    class ___VARIABLE_sceneName___BusinessLogicSpy: ___VARIABLE_sceneName___BusinessLogic {

        // MARK: Spied Methods

        var fetchFromLocalDataStoreCalled = false
        func fetchFromLocalDataStore(with request: ___VARIABLE_sceneName___Models.FetchFromLocalDataStore.Request) {
            fetchFromLocalDataStoreCalled = true
        }

        var fetchFromRemoteDataStoreCalled = false
        func fetchFromRemoteDataStore(with request: ___VARIABLE_sceneName___Models.FetchFromRemoteDataStore.Request) {
            fetchFromRemoteDataStoreCalled = true
        }

        var trackAnalyticsCalled = false
        func trackAnalytics(with request: ___VARIABLE_sceneName___Models.TrackAnalytics.Request) {
            trackAnalyticsCalled = true
        }

        var perform___VARIABLE_sceneName___Called = false
        func perform___VARIABLE_sceneName___(with request: ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Request) {
            perform___VARIABLE_sceneName___Called = true
        }
    }

    class ___VARIABLE_sceneName___RouterSpy: ___VARIABLE_sceneName___Router {

        // MARK: Spied Methods

        var routeToNextCalled = false
        override func routeToNext() {
            routeToNextCalled = true
        }
    }

    // MARK: - Tests

    func testShouldFetchFromLocalDataStoreWhenViewIsLoaded() {
        // given
        let spy = ___VARIABLE_sceneName___BusinessLogicSpy()
        sut.interactor = spy

        // when
        loadView()

        // then
        XCTAssertTrue(spy.fetchFromLocalDataStoreCalled, "viewDidLoad() should ask the interactor to fetch from local DataStore")
    }

    func testShouldDisplayDataFetchedFromLocalDataStore() {
        // given
        loadView()
        let translation = "Example string."
        let viewModel = Models.FetchFromLocalDataStore.ViewModel(exampleTranslation: translation)

        // when
        sut.displayFetchFromLocalDataStore(with: viewModel)

        // then
        XCTAssertEqual(sut.exampleLocalLabel.text, translation, "displayFetchFromLocalDataStore(with:) should display the correct example label text")
    }

    func testShouldFetchFromRemoteDataStoreWhenViewWillAppear() {
        // given
        let spy = ___VARIABLE_sceneName___BusinessLogicSpy()
        sut.interactor = spy

        // when
        loadView()

        // then
        XCTAssertTrue(spy.fetchFromRemoteDataStoreCalled, "viewWillAppear(_:) should ask the interactor to fetch from remote DataStore")
    }

    func testShouldDisplayDataFetchedFromRemoteDataStore() {
        // given
        loadView()
        let exampleVariable = "Example string."
        let viewModel = Models.FetchFromRemoteDataStore.ViewModel(exampleVariable: exampleVariable)

        // when
        sut.displayFetchFromRemoteDataStore(with: viewModel)

        // then
        XCTAssertEqual(sut.exampleRemoteLabel.text, exampleVariable, "displayFetchFromRemoteDataStore(with:) should display the correct example label text")
    }

    func testShouldTrackAnalyticsWhenViewDidAppear() {
        // given
        let spy = ___VARIABLE_sceneName___BusinessLogicSpy()
        sut.interactor = spy
        loadView()

        // when
        sut.viewDidAppear(true)

        // then
        XCTAssertTrue(spy.trackAnalyticsCalled, "When needed, view controller should ask the interactor to track analytics")
    }

    func testShouldDisplayTrackAnalyticsWhenDisplayTrackAnalytics() {
        // given
        loadView()
        let viewModel = Models.TrackAnalytics.ViewModel()

        // when
        sut.displayTrackAnalytics(with: viewModel)

        // then
        // assert something here based on use case
    }

    func testUnsuccessful___VARIABLE_sceneName___ShouldShowErrorAsLabel() {
        // given
        loadView()
        var error = Models.___VARIABLE_sceneName___Error(type: .emptyExampleVariable)
        error.message = "Example error"
        let viewModel = Models.Perform___VARIABLE_sceneName___.ViewModel(error: error)

        // when
        sut.displayPerform___VARIABLE_sceneName___(with: viewModel)

        // then
        XCTAssertEqual(sut.exampleLocalLabel.text, error.message, "displayPerform___VARIABLE_sceneName___(with:) should set error as label if there is an error")
    }

    func testUnsuccessful___VARIABLE_sceneName___ShouldNotRouteToNext() {
        // given
        let spy = ___VARIABLE_sceneName___RouterSpy()
        sut.router = spy
        loadView()
        let error = ___VARIABLE_sceneName___Models.Error<___VARIABLE_sceneName___Models.___VARIABLE_sceneName___ErrorType>.init(type: .emptyExampleVariable)
        let viewModel = ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.ViewModel(error: error)

        // when
        sut.displayPerform___VARIABLE_sceneName___(with: viewModel)

        // then
        XCTAssertFalse(spy.routeToNextCalled, "displayPerform___VARIABLE_sceneName___(with:) should not route to next screen if there is an error")
    }

    func testSuccessful___VARIABLE_sceneName___ShouldRouteToNext() {
        // given
        let spy = ___VARIABLE_sceneName___RouterSpy()
        sut.router = spy
        loadView()
        let viewModel = ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.ViewModel(error: nil)

        // when
        sut.displayPerform___VARIABLE_sceneName___(with: viewModel)

        // then
        XCTAssertTrue(spy.routeToNextCalled, "displayPerform___VARIABLE_sceneName___(with:) should route to next screen if there is no error")
    }
}
