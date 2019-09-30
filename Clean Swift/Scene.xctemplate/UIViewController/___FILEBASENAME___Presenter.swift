//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_sceneName___PresentationLogic {
    func presentFetchFromLocalDataStore(with response: ___VARIABLE_sceneName___Models.FetchFromLocalDataStore.Response)
    func presentFetchFromRemoteDataStore(with response: ___VARIABLE_sceneName___Models.FetchFromRemoteDataStore.Response)
    func presentTrackAnalytics(with response: ___VARIABLE_sceneName___Models.TrackAnalytics.Response)
    func presentPerform___VARIABLE_sceneName___(with response: ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Response)
}

class ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___PresentationLogic {

    // MARK: - Properties

    weak var viewController: ___VARIABLE_sceneName___DisplayLogic?

    // MARK: - Use Case - Fetch From Local DataStore

    func presentFetchFromLocalDataStore(with response: ___VARIABLE_sceneName___Models.FetchFromLocalDataStore.Response) {
        let translation = "Some localised text."
        let viewModel = ___VARIABLE_sceneName___Models.FetchFromLocalDataStore.ViewModel(exampleTranslation: translation)
        viewController?.displayFetchFromLocalDataStore(with: viewModel)
    }

    // MARK: - Use Case - Fetch From Remote DataStore

    func presentFetchFromRemoteDataStore(with response: ___VARIABLE_sceneName___Models.FetchFromRemoteDataStore.Response) {
        let viewModel = ___VARIABLE_sceneName___Models.FetchFromRemoteDataStore.ViewModel(exampleVariable: response.exampleVariable)
        viewController?.displayFetchFromRemoteDataStore(with: viewModel)
    }    

    // MARK: - Use Case - Track Analytics

    func presentTrackAnalytics(with response: ___VARIABLE_sceneName___Models.TrackAnalytics.Response) {
        let viewModel = ___VARIABLE_sceneName___Models.TrackAnalytics.ViewModel()
        viewController?.displayTrackAnalytics(with: viewModel)
    }

    // MARK: - Use Case - ___VARIABLE_sceneName___

    func presentPerform___VARIABLE_sceneName___(with response: ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Response) {
        var responseError = response.error

        if let error = responseError {
            switch error.type {
            case .emptyExampleVariable:
                responseError?.message = "Localised empty/nil error message."

            case .apiError:
                responseError?.message = "Localised api error message."
            }
        }

        let viewModel = ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.ViewModel(error: responseError)
        viewController?.displayPerform___VARIABLE_sceneName___(with: viewModel)
    }
}
