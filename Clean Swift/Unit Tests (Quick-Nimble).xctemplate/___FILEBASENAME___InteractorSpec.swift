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

class ___VARIABLE_sceneName___InteractorSpec: QuickSpec {
    override func spec() {

        // MARK: - Subject Under Test (SUT)

        var sut: ___VARIABLE_sceneName___Interactor!

        // MARK: - Test Doubles

        var presentationLogicSpy: ___VARIABLE_sceneName___PresentationLogicSpy!
        var workerSpy: ___VARIABLE_sceneName___WorkerSpy!

        // MARK: - Tests

        beforeEach {
            setupInitialUserState()
            setupInteractor()
            setupPresentationLogic()
            setupWorker()
        }

        afterEach {
            sut = nil
            presentationLogicSpy = nil
            workerSpy = nil
        }

        // MARK: - Use Cases

        describe("fetch from local data store") {
            it("should ask presenter to format", closure: {
                // given
                let request = ___VARIABLE_sceneName___Models.FetchFromLocalDataStore.Request()

                // when
                sut.fetchFromLocalDataStore(with: request)

                // then
                expect(presentationLogicSpy.presentFetchFromLocalDataStoreCalled).to(beTrue())
            })
        }

        describe("track analytics") {
            beforeEach {
                // given
                let request = ___VARIABLE_sceneName___Models.TrackAnalytics.Request(event: .screenView)

                // when
                sut.trackAnalytics(with: request)
            }

            it("should ask worker to track analytics", closure: {
                // then
                expect(workerSpy.trackAnalyticsCalled).to(beTrue())
            })

            it("should ask presenter to format", closure: {
                // then
                expect(presentationLogicSpy.presentTrackAnalyticsCalled).to(beTrue())
            })
        }

        describe("perform ___VARIABLE_sceneName___") {
            it("should validate example variable", closure: {
                // given
                let request = ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Request()

                // when
                sut.perform___VARIABLE_sceneName___(with: request)

                // then
                expect(workerSpy.validateExampleVariableCalled).to(beTrue())
            })

            context("when there are error(s)", closure: {
                it("should not ask worker to perform ___VARIABLE_sceneName___", closure: {
                    // given
                    let request = ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Request(exampleVariable: nil)

                    // when
                    sut.perform___VARIABLE_sceneName___(with: request)

                    // then
                    expect(workerSpy.perform___VARIABLE_sceneName___Called).to(beFalse())
                })
            })

            context("when there are no errors", closure: {
                it("should ask worker to perform ___VARIABLE_sceneName___", closure: {
                    // given
                    let request = ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Request(exampleVariable: "Example string.")

                    // when
                    sut.perform___VARIABLE_sceneName___(with: request)

                    // then
                    expect(workerSpy.perform___VARIABLE_sceneName___Called).to(beTrue())
                })
            })

            it("should ask presenter to format", closure: {
                // given
                let request = ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Request()

                // when
                sut.perform___VARIABLE_sceneName___(with: request)

                // then
                expect(presentationLogicSpy.presentPerform___VARIABLE_sceneName___Called).toEventually(beTrue())
            })
        }

        // MARK: - Test Helpers

        func setupInitialUserState() {
            // some initial user state setup
        }

        func setupInteractor() {
            sut = ___VARIABLE_sceneName___Interactor()
        }

        func setupPresentationLogic() {
            presentationLogicSpy = ___VARIABLE_sceneName___PresentationLogicSpy()
            sut.presenter = presentationLogicSpy
        }

        func setupWorker() {
            workerSpy = ___VARIABLE_sceneName___WorkerSpy()
            sut.worker = workerSpy
        }
    }
}

// MARK: - Test Doubles

extension ___VARIABLE_sceneName___InteractorSpec {
    class ___VARIABLE_sceneName___PresentationLogicSpy: ___VARIABLE_sceneName___PresentationLogic {

        // MARK: Spied Methods

        var presentFetchFromLocalDataStoreCalled = false
        var fetchFromLocalDataStoreResponse: ___VARIABLE_sceneName___Models.FetchFromLocalDataStore.Response!
        func presentFetchFromLocalDataStore(with response: ___VARIABLE_sceneName___Models.FetchFromLocalDataStore.Response) {
            presentFetchFromLocalDataStoreCalled = true
            fetchFromLocalDataStoreResponse = response
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
}
