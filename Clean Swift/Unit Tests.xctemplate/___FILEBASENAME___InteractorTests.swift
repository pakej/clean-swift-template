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

        var present___VARIABLE_sceneName___Called = false
        func present___VARIABLE_sceneName___(with response: ___VARIABLE_sceneName___Models.___VARIABLE_sceneName___.Response) {
            present___VARIABLE_sceneName___Called = true
        }
    }

    // MARK: - Tests

    func testFetchFromDataStore() {
        // given
        let request = ___VARIABLE_sceneName___Models.FetchFromDataStore.Request()
        let spy = ___VARIABLE_sceneName___PresentationLogicSpy()
        sut.presenter = spy

        // when
        sut.fetchFromDataStore(with: request)

        // then
        XCTAssertTrue(spy.presentFetchFromDataStoreCalled, "fetchFromDataStore(request:) should ask the presenter to format the result")
    }

    func test___VARIABLE_sceneName___() {
        // given
        let request = ___VARIABLE_sceneName___Models.___VARIABLE_sceneName___.Request()
        let spy = ___VARIABLE_sceneName___PresentationLogicSpy()
        sut.presenter = spy

        // when
        sut.___VARIABLE_sceneName___(with: request)

        // then
        XCTAssertTrue(spy.present___VARIABLE_sceneName___Called, "___VARIABLE_sceneName___(request:) should ask the presenter to format the result")
    }
}
