//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_sceneName___BusinessLogic {
    func fetchFromDataStore(with request: ___VARIABLE_sceneName___Models.FetchFromDataStore.Request)
    func trackAnalytics(with request: ___VARIABLE_sceneName___Models.TrackAnalytics.Request)
    func perform___VARIABLE_sceneName___(with request: ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Request)
}

protocol ___VARIABLE_sceneName___DataStore {
    var exampleVariable: String? { get set }
}

class ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___BusinessLogic, ___VARIABLE_sceneName___DataStore {

    // MARK: - Properties

    var worker: ___VARIABLE_sceneName___Worker? = ___VARIABLE_sceneName___Worker()
    var presenter: ___VARIABLE_sceneName___PresentationLogic?
    var exampleVariable: String?

    // MARK: - Use Case - Fetch Data From DataStore

    func fetchFromDataStore(with request: ___VARIABLE_sceneName___Models.FetchFromDataStore.Request) {
        self.exampleVariable = ""
        let response = ___VARIABLE_sceneName___Models.FetchFromDataStore.Response(exampleVariable: exampleVariable)
        presenter?.presentFetchFromDataStore(with: response)
    }

    // MARK: - Use Case - Track Analytics

    func trackAnalytics(with request: ___VARIABLE_sceneName___Models.TrackAnalytics.Request) {
        worker?.trackAnalytics(event: request.event)

        let response = ___VARIABLE_sceneName___Models.TrackAnalytics.Response()
        presenter?.presentTrackAnalytics(with: response)
    }

    // MARK: - Use Case - ___VARIABLE_sceneName___

    func perform___VARIABLE_sceneName___(with request: ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Request) {
        worker?.validate(exampleVariable: request.exampleVariable)

        if let error = worker?.error {
            let response = ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Response(error: error)
            presenter?.presentPerform___VARIABLE_sceneName___(with: response)
            return
        }

        worker?.perform___VARIABLE_sceneName___(completion: {
            [weak self] (isSuccessful, error) in

            if isSuccessful {
                // do something on success
            }

            let response = ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Response(error: error)
            self?.presenter?.presentPerform___VARIABLE_sceneName___(with: response)
        })
    }
}
