//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

class ___VARIABLE_sceneName___PresenterTests: XCTestCase {

    // MARK: - Subject Under Test (SUT)

    var sut: ___VARIABLE_sceneName___Presenter!

    // MARK: - Test Lifecycle

    override func setUp() {
        super.setUp()
        setup___VARIABLE_sceneName___Presenter()
    }

    override func tearDown() {
        super.tearDown()
    }

    // MARK: - Test Setup

    func setup___VARIABLE_sceneName___Presenter() {
        sut = ___VARIABLE_sceneName___Presenter()
    }

    // MARK: - Test Doubles

    class ___VARIABLE_sceneName___DisplayLogicSpy: ___VARIABLE_sceneName___DisplayLogic {

        // MARK: Spied Methods

        var displayFetchFromDataStoreCalled = false
        func displayFetchFromDataStore(with viewModel: ___VARIABLE_sceneName___Models.FetchFromDataStore.ViewModel) {
            displayFetchFromDataStoreCalled = true
        }

        var display___VARIABLE_sceneName___Called = false
        func display___VARIABLE_sceneName___(with viewModel: ___VARIABLE_sceneName___Models.___VARIABLE_sceneName___.ViewModel) {
            display___VARIABLE_sceneName___Called = true
        }    
    }

    // MARK: - Tests

    func testFetchFromDataStore() {
        // given
        let spy = ___VARIABLE_sceneName___DisplayLogicSpy()
        sut.viewController = spy
        let response = ___VARIABLE_sceneName___Models.FetchFromDataStore.Response()

        // when
        sut.presentFetchFromDataStore(with: response)

        // then
        XCTAssertTrue(spy.displayFetchFromDataStoreCalled, "presentFetchFromDataStore(with:) should ask the view controller to display the result")
    }

    func test___VARIABLE_sceneName___() {
        // given
        let spy = ___VARIABLE_sceneName___DisplayLogicSpy()
        sut.viewController = spy
        let response = ___VARIABLE_sceneName___Models.___VARIABLE_sceneName___.Response()

        // when
        sut.present___VARIABLE_sceneName___(with: response)

        // then
        XCTAssertTrue(spy.display___VARIABLE_sceneName___Called, "present___VARIABLE_sceneName___(with:) should ask the view controller to display the result")
    }  
}
