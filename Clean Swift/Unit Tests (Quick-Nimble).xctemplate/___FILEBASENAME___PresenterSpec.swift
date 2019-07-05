//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Quick
import Nimble
@testable import ___PROJECTNAMEASIDENTIFIER___

class ___VARIABLE_sceneName___PresenterSpec: QuickSpec {
    override func spec() {

        // MARK: - Subject Under Test (SUT)

        var sut: ___VARIABLE_sceneName___Presenter!

        // MARK: - Test Doubles

        var displayLogicSpy: ___VARIABLE_sceneName___DisplayLogicSpy!

        // MARK: - Tests

        beforeEach {
            setupInitialUserState()
            setupPresenter()
            setupDisplayLogic()
        }

        afterEach {
            sut = nil
            displayLogicSpy = nil
        }

        // MARK: - Use Cases

        describe("present fetch from data store") {
            it("should ask view controller to display", closure: {
                // given
                let response = ___VARIABLE_sceneName___Models.FetchFromDataStore.Response()

                // when
                sut.presentFetchFromDataStore(with: response)

                // then
                expect(displayLogicSpy.displayFetchFromDataStoreCalled).to(beTrue())
            })
        }

        describe("present track analytics") {
            it("should ask view controller to display", closure: {
                // given
                let response = ___VARIABLE_sceneName___Models.TrackAnalytics.Response()

                // when
                sut.presentTrackAnalytics(with: response)

                // then
                expect(displayLogicSpy.displayTrackAnalyticsCalled).to(beTrue())
            })
        }

        describe("present perform ___VARIABLE_sceneName___") {
            context("when there are error(s)", closure: {
                it("should return error message", closure: {
                    // given
                    let error = ___VARIABLE_sceneName___Models.Error<___VARIABLE_sceneName___Models.___VARIABLE_sceneName___ErrorType>.init(type: .emptyExampleVariable)
                    let response = ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Response(error: error)

                    // when
                    sut.presentPerform___VARIABLE_sceneName___(with: response)

                    // then
                    expect(displayLogicSpy.perform___VARIABLE_sceneName___ViewModel.error?.message).notTo(beNil())
                })
            })

            it("should ask view controller to display", closure: {
                // given
                let response = ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Response()

                // when
                sut.presentPerform___VARIABLE_sceneName___(with: response)

                // then
                expect(displayLogicSpy.displayPerform___VARIABLE_sceneName___Called).to(beTrue())
            })
        }

        // MARK: - Test Helpers

        func setupInitialUserState() {
            // some initial user state setup
        }

        func setupPresenter() {
            sut = ___VARIABLE_sceneName___Presenter()
        }

        func setupDisplayLogic() {
            displayLogicSpy = ___VARIABLE_sceneName___DisplayLogicSpy()
            sut.viewController = displayLogicSpy
        }
    }
}

// MARK: - Test Doubles

extension ___VARIABLE_sceneName___PresenterSpec {
    class ___VARIABLE_sceneName___DisplayLogicSpy: ___VARIABLE_sceneName___DisplayLogic {

        // MARK: Spied Methods

        var displayFetchFromDataStoreCalled = false
        var fetchFromDataStoreViewModel: ___VARIABLE_sceneName___Models.FetchFromDataStore.ViewModel!
        func displayFetchFromDataStore(with viewModel: ___VARIABLE_sceneName___Models.FetchFromDataStore.ViewModel) {
            displayFetchFromDataStoreCalled = true
            fetchFromDataStoreViewModel = viewModel
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
}
