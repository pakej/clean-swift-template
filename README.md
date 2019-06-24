# CleanSwift Template

This is a CleanSwift template modified from the original, to accomodate common project usage.

## Modifications

1. All Files
    - All file templates are updated so that upon scene generation, the app still works without throwing errors.
    - Pre-built with 3 common use cases:
      1. Upon entering a screen - `fetchFromDataStore(with:)`
          - There's almost always data to be displayed on the screen.
      1. Tracking analytics - `trackAnalytics(with:)`
          - Sometimes a triggered UI element needs to be tracked for app improvements.
          - This use case made it easier.
      1. Upon leaving a screen - `perform<SCENE_NAME>(with:)`
          - In order to leave a screen, a use case is almost always needed.

1. Models
    - The template generates a file appended with the word `models` to make it more obvious.

1. Interactor, Presenter & ViewController
    - Each Use Case logic would have the comment header `// MARK: - Use Case -` for better readability between the Use Case & other functions.

1. Unit Test
    - The templates are also updated to test the pre-built use cases.
    - A template that is written using the Quick and Nimble libraries are also added if it's preferred over XCTest.

1. Removed
    - `UICollectionViewController` and `UITableViewController` templates are removed since the templates use the `UIViewController` templates anyway.

## Installation

1. Clone this repository
1. From this repository:

    To install the Clean Swift Xcode templates,run:
    ```bash
    $ make install_templates
    ```

    To uninstall the Clean Swift Xcode templates, run:
    ```bash
    $ make uninstall_templates
    ```

## References

To learn more about Clean Swift and the VIP cycle, read:

- http://clean-swift.com/clean-swift-ios-architecture

There is a sample app available at:

- https://github.com/zaimramlan/ios-clean-todo
