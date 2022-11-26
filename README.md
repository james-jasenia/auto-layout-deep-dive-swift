# auto-layout-deep-dive-swift

# File Owner vs Custom Class (via Indentiy Inspector)
This is a great medium article explaining the different setups for `.xib`s. There are two methods for loading an `.xib`:
  1. `instantiate(withOwner:options:)`
  2. `Bundle.main.loadNibNamed(_:owner:options:)`

- If you are using Custom Class, you should use `Bundle.main.loadNibNamed(_:owner:options:)`. You cannot load the `UINib` in the `init(coder:)` method of the custom class otherwise you will end up with a retain cycle. It must be done in an external class such as a `ResuableXibView` or a `UIViewController`. You are not able to create an `@IBOutlet` in another storyboard view using this approach. You are resticted to progammatic (I think).
- If you are using File Owner, you should use `instantiate(withOwner:options:)` in the File Owner's class. This is the more flexible and reusable option where you have the freedom to instantiate the view both programatically and via storyboard.

https://medium.com/@bhupendra.trivedi14/understanding-custom-uiview-in-depth-setting-file-owner-vs-custom-class-e2cab4bb9df8

