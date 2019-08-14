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

class ___VARIABLE_sceneName___WorkerSpec: QuickSpec {
    override func spec() {

        // MARK: - Subject Under Test (SUT)

        var sut: ___VARIABLE_sceneName___Worker!

        // MARK: - Test Doubles

        // MARK: - Tests

        beforeEach {
            setupWorker()
        }

        afterEach {
            sut = nil
        }

        // MARK: - Use Cases

        describe("validate example variable") {
            context("example variable is nil", closure: {
                it("should create empty example variable error", closure: {
                    // given
                    let exampleVariable: String? = nil

                    // when
                    sut.validate(exampleVariable: exampleVariable)

                    // then
                    expect(sut.error).notTo(beNil())
                    expect(sut.error?.type).to(equal(___VARIABLE_sceneName___Models.___VARIABLE_sceneName___ErrorType.emptyExampleVariable))
                })
            })

            context("example variable is empty", closure: {
                it("should create empty example variable error", closure: {
                    // given
                    let exampleVariable = ""

                    // when
                    sut.validate(exampleVariable: exampleVariable)

                    // then
                    expect(sut.error).notTo(beNil())
                    expect(sut.error?.type).to(equal(___VARIABLE_sceneName___Models.___VARIABLE_sceneName___ErrorType.emptyExampleVariable))
                })
            })

            context("example variable is not nil and not empty", closure: {
                it("should not create error", closure: {
                    // given
                    let exampleVariable = "Example string."

                    // when
                    sut.validate(exampleVariable: exampleVariable)

                    // then
                    expect(sut.error).to(beNil())
                })
            })
        }

        describe("perform ___VARIABLE_sceneName___") {
            it("should always return true and without error response", closure: {
                // given
                var response: (isSuccessful: Bool, error: ___VARIABLE_sceneName___Models.Error<___VARIABLE_sceneName___Models.___VARIABLE_sceneName___ErrorType>?)!

                // when
                sut.perform___VARIABLE_sceneName___(completion: { (isSuccessful, error) in
                    response = (isSuccessful, error)
                })

                // then
                expect(response.isSuccessful).toEventually(beTrue())
                expect(response.error).toEventually(beNil())
            })
        }

        describe("track analytics") {
            context("event is screen view", closure: {
                it("should track analytics", closure: {
                    // given
                    let viewModel = ___VARIABLE_sceneName___Models.TrackAnalytics.ViewModel(event: .screenView)

                    // when
                    sut.trackAnalytics(with: viewModel)

                    // then
                    // assert something here based on use case
                })
            })
        }

        // MARK: - Test Helpers

        func setupWorker() {
            sut = ___VARIABLE_sceneName___Worker()
        }
    }
}

// MARK: - Test Doubles

extension ___VARIABLE_sceneName___WorkerSpec {
}
