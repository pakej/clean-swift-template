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

        typealias Models = NewGroupModels
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

        describe("present fetch from local data store") {
            it("should ask view controller to display", closure: {
                // given
                let response = Models.FetchFromLocalDataStore.Response()

                // when
                sut.presentFetchFromLocalDataStore(with: response)

                // then
                expect(displayLogicSpy.displayFetchFromLocalDataStoreCalled).to(beTrue())
            })
        }

        describe("present fetch from remote data store") {
            it("should ask view controller to display", closure: {
                // given
                let response = Models.FetchFromRemoteDataStore.Response()

                // when
                sut.presentFetchFromRemoteDataStore(with: response)

                // then
                expect(displayLogicSpy.displayFetchFromRemoteDataStoreCalled).to(beTrue())
            })
        }

        describe("present track analytics") {
            it("should ask view controller to display", closure: {
                // given
                let response = Models.TrackAnalytics.Response()

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
                    let error = Models.___VARIABLE_sceneName___Error(type: .emptyExampleVariable)
                    let response = Models.Perform___VARIABLE_sceneName___.Response(error: error)

                    // when
                    sut.presentPerform___VARIABLE_sceneName___(with: response)

                    // then
                    expect(displayLogicSpy.perform___VARIABLE_sceneName___ViewModel.error?.message).notTo(beNil())
                })
            })

            it("should ask view controller to display", closure: {
                // given
                let response = Models.Perform___VARIABLE_sceneName___.Response()

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
}
