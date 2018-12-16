# CleanSwift Template

This is a CleanSwift template modified from the original, to accomodate common project usage.

## Modifications

1. The Models template generates a file appended with the word `models` to make it more obvious.
1. All file templates are updated so that upon scene generation, the app still works without throwing errors.
1. Each Use Case logic in Interactor, Presenter & ViewController would have the comment header `// MARK: Use Case -` for better readability between the Use Case & other functions.
1. An additional logic function `fetchFromDataStore(with:)` is added to the template since there's almost always data to be displayed on the screen after `viewDidLoad`, `viewWillAppear` or `viewDidAppear`.
1. `UICollectionViewController` and `UITableViewController` templates are removed since the templates use the `UIViewController` templates anyway.
1. The Unit Test templates are also updated to include the additional logic function; `fetchFromDataStore(with:)`.

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
