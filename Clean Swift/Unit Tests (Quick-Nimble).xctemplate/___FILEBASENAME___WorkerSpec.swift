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

        typealias Models = ___VARIABLE_sceneName___Models
        var sut: ___VARIABLE_sceneName___Worker!

        // MARK: - Test Doubles

        // MARK: - Tests

        beforeEach {
            setupWorker()
        }

        afterEach {
            sut = nil
        }

        // MARK: - Methods

        describe("validate example variable") {
            context("example variable is nil", closure: {
                it("should create empty example variable error", closure: {
                    // given
                    let exampleVariable: String? = nil

                    // when
                    let error = sut.validate(exampleVariable: exampleVariable)

                    // then
                    expect(error).notTo(beNil())
                    expect(error?.type).to(equal(Models.___VARIABLE_sceneName___ErrorType.emptyExampleVariable))
                })
            })

            context("example variable is empty", closure: {
                it("should create empty example variable error", closure: {
                    // given
                    let exampleVariable = ""

                    // when
                    let error = sut.validate(exampleVariable: exampleVariable)

                    // then
                    expect(error).notTo(beNil())
                    expect(error?.type).to(equal(Models.___VARIABLE_sceneName___ErrorType.emptyExampleVariable))
                })
            })

            context("example variable is not nil and not empty", closure: {
                it("should not create error", closure: {
                    // given
                    let exampleVariable = "Example string."

                    // when
                    let error = sut.validate(exampleVariable: exampleVariable)

                    // then
                    expect(error).to(beNil())
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
