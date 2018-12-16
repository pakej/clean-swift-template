//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_sceneName___Worker {

    // MARK: - Properties

    typealias ErrorType = ___VARIABLE_sceneName___Models.___VARIABLE_sceneName___ErrorType
    var error: ___VARIABLE_sceneName___Models.Error<ErrorType>?

    // MARK: - Use Cases

    func validate(exampleVariable: String?) {
        if exampleVariable?.isEmpty == false {
            error = nil
        }
        else {
            error = ___VARIABLE_sceneName___Models.Error<ErrorType>.init(type: .emptyExampleVariable)
        }
    }

    func perform___VARIABLE_sceneName___(completion: @escaping (Bool, ___VARIABLE_sceneName___Models.Error<ErrorType>?) -> Void) {
        let isSuccessful = true
        let error: ___VARIABLE_sceneName___Models.Error<ErrorType>? = nil

        completion(isSuccessful, error)
    }
}
