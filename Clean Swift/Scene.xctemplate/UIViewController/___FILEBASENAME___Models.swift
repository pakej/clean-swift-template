//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

enum ___VARIABLE_sceneName___Models {

    // MARK: - Use Cases

    enum FetchFromLocalDataStore {
        struct Request {
        }

        struct Response {
        }

        struct ViewModel {
            var exampleTranslation: String?
        }
    }

    enum FetchFromRemoteDataStore {
        struct Request {
        }

        struct Response {
            var exampleVariable: String?
        }

        struct ViewModel {
            var exampleVariable: String?
        }
    }

    enum TrackAnalytics {
        struct Request {
            var event: AnalyticsEvents
        }

        struct Response {
        }

        struct ViewModel {
        }
    }

    enum Perform___VARIABLE_sceneName___ {
        struct Request {
            var exampleVariable: String?
        }

        struct Response {
            var error: Error<___VARIABLE_sceneName___ErrorType>?
        }

        struct ViewModel {
            var error: Error<___VARIABLE_sceneName___ErrorType>?
        }
    }

    // MARK: - Types

    typealias AnalyticsEvents = <#Path.To.Analytics.Constants#>

    enum ___VARIABLE_sceneName___ErrorType {
        case emptyExampleVariable, apiError
    }

    struct Error<T> {
        var type: T
        var message: String?

        init(type: T) {
            self.type = type
        }
    }
}
