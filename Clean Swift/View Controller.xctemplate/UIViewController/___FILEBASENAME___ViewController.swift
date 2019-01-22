//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_sceneName___DisplayLogic: class {
    func displayFetchFromDataStore(with viewModel: ___VARIABLE_sceneName___Models.FetchFromDataStore.ViewModel)
    func displayTrackAnalytics(with viewModel: ___VARIABLE_sceneName___Models.TrackAnalytics.ViewModel)    
    func displayPerform___VARIABLE_sceneName___(with viewModel: ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.ViewModel)
}

class ___VARIABLE_sceneName___ViewController: UIViewController, ___VARIABLE_sceneName___DisplayLogic {

    // MARK: - Properties

    var router: (NSObjectProtocol & ___VARIABLE_sceneName___RoutingLogic & ___VARIABLE_sceneName___DataPassing)?
    var interactor: ___VARIABLE_sceneName___BusinessLogic?

    // MARK: - Object lifecycle

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    // MARK: - Setup

    private func setup() {
        let viewController = self
        let interactor = ___VARIABLE_sceneName___Interactor()
        let presenter = ___VARIABLE_sceneName___Presenter()
        let router = ___VARIABLE_sceneName___Router()

        viewController.router = router
        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }

    // MARK: - View Lifecycle

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupFetchFromDataStore()
    }

    // MARK: Use Case - Fetch Data From DataStore

    @IBOutlet var exampleLabel: UILabel! = UILabel()
    func setupFetchFromDataStore() {
        let request = ___VARIABLE_sceneName___Models.FetchFromDataStore.Request()
        interactor?.fetchFromDataStore(with: request)
    }

    func displayFetchFromDataStore(with viewModel: ___VARIABLE_sceneName___Models.FetchFromDataStore.ViewModel) {
        exampleLabel.text = viewModel.exampleVariable
    }

    // MARK: Use Case - Track Analytics

    func trackAnalytics() {
        let request = ___VARIABLE_sceneName___Models.TrackAnalytics.Request()
        interactor?.trackAnalytics(with: request)
    }

    func displayTrackAnalytics(with viewModel: ___VARIABLE_sceneName___Models.TrackAnalytics.ViewModel) {
        // do something after tracking analytics (if needed)
    }

    // MARK: Use Case - ___VARIABLE_sceneName___

    func perform___VARIABLE_sceneName___(_ sender: Any) {
        let request = ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.Request(exampleVariable: exampleLabel.text)
        interactor?.perform___VARIABLE_sceneName___(with: request)
    }

    func displayPerform___VARIABLE_sceneName___(with viewModel: ___VARIABLE_sceneName___Models.Perform___VARIABLE_sceneName___.ViewModel) {
        // handle error and ui element error states
        // based on error type
        if let error = viewModel.error {
            switch error.type {
                case .emptyExampleVariable:
                    exampleLabel.text = error.message

                case .apiError:
                    exampleLabel.text = error.message
            }
            return
        }

        // handle ui element success state and
        // route to next screen
        router?.routeToNext()
    }
}
