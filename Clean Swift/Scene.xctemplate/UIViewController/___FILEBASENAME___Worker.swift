//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_sceneName___Worker {

    // MARK: - Properties

    typealias Models = ___VARIABLE_sceneName___Models

    // MARK: - Methods

    // MARK: Screen Specific Validation

    func validate(exampleVariable: String?) -> Models.___VARIABLE_sceneName___Error? {
        var error: Models.___VARIABLE_sceneName___Error?

        if exampleVariable?.isEmpty == false {
            error = nil
        } else {
            error = Models.___VARIABLE_sceneName___Error(type: .emptyExampleVariable)
        }

        return error
    }
}
