//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_sceneName___BusinessLogic {
    func fetchFromLocalDataStore(with request: ___VARIABLE_sceneName___Models.FetchFromLocalDataStore.Request)
    func fetchFromRemoteDataStore(with request: ___VARIABLE_sceneName___Models.FetchFromRemoteDataStore.Request)
    func trackAnalytics(with request: ___VARIABLE_sceneName___Models.TrackAnalytics.Request)
    func perform___VARIABLE_sceneName___(with request: ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Request)
}

protocol ___VARIABLE_sceneName___DataStore {
    var exampleVariable: String? { get set }
}

class ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___BusinessLogic, ___VARIABLE_sceneName___DataStore {

    // MARK: - Properties

    typealias Models = ___VARIABLE_sceneName___Models

    lazy var worker = ___VARIABLE_sceneName___Worker()
    var presenter: ___VARIABLE_sceneName___PresentationLogic?

    var exampleVariable: String?

    // MARK: - Use Case - Fetch From Local DataStore

    func fetchFromLocalDataStore(with request: ___VARIABLE_sceneName___Models.FetchFromLocalDataStore.Request) {
        let response = Models.FetchFromLocalDataStore.Response()
        presenter?.presentFetchFromLocalDataStore(with: response)
    }

    // MARK: - Use Case - Fetch From Remote DataStore

    func fetchFromRemoteDataStore(with request: ___VARIABLE_sceneName___Models.FetchFromRemoteDataStore.Request) {
        // fetch something from backend and return the values here
        // <#Network Worker Instance#>.fetchFromRemoteDataStore(completion: { [weak self] code in
        //     let response = Models.FetchFromRemoteDataStore.Response(exampleVariable: code)
        //     self?.presenter?.presentFetchFromRemoteDataStore(with: response)
        // })
    }

    // MARK: - Use Case - Track Analytics

    func trackAnalytics(with request: ___VARIABLE_sceneName___Models.TrackAnalytics.Request) {
        // call analytics library/wrapper here to track analytics
        // <#Analytics Worker Instance#>.trackAnalytics(event: request.event)

        let response = Models.TrackAnalytics.Response()
        presenter?.presentTrackAnalytics(with: response)
    }

    // MARK: - Use Case - ___VARIABLE_sceneName___

    func perform___VARIABLE_sceneName___(with request: ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Request) {
        let error = worker.validate(exampleVariable: request.exampleVariable)

        if let error = error {
            let response = Models.Perform___VARIABLE_sceneName___.Response(error: error)
            presenter?.presentPerform___VARIABLE_sceneName___(with: response)
            return
        }

        // <#Network Worker Instance#>.perform___VARIABLE_sceneName___(completion: { [weak self, weak request] isSuccessful, error in
        //     self?.completion(request?.exampleVariable, isSuccessful, error)
        // })
    }

    private func completion(_ exampleVariable: String?, _ isSuccessful: Bool, _ error: Models.___VARIABLE_sceneName___Error?) {
        if isSuccessful {
            // do something on success
            let goodExample = exampleVariable ?? ""
            self.exampleVariable = goodExample
        }

        let response = Models.Perform___VARIABLE_sceneName___.Response(error: error)
        presenter?.presentPerform___VARIABLE_sceneName___(with: response)
    }
}
