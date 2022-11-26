# auto-layout-deep-dive-swift
Reference: https://medium.com/@bhupendra.trivedi14/understanding-custom-uiview-in-depth-setting-file-owner-vs-custom-class-e2cab4bb9df8

# File Owner vs Custom Class (via Indentiy Inspector)
This is a great medium article explaining the different setups for `.xib`s. There are two methods for loading an `.xib`:
1. `instantiate(withOwner:options:)`
2. `Bundle.main.loadNibNamed(_:owner:options:)`


- If you are using Custom Class, you should use `Bundle.main.loadNibNamed(_:owner:options:)`. You cannot load the `UINib` in the `init(coder:)` method of the custom class otherwise you will end up with a retain cycle. It must be done in an external class such as a `ResuableXibView` or a `UIViewController`. You are not able to create an `@IBOutlet` in another storyboard view using this approach. You are resticted to progammatic (I think).

- If you are using File Owner, you should use `instantiate(withOwner:options:)` in the File Owner's class. This is the more flexible and reusable option where you have the freedom to instantiate the view both programatically and via storyboard.

# Size Classes
It is straight forward. The painful part of size classes is that iPhone Max and Pro models have a regular width where as the base models have a compact width.

# Scroll View Layout Guides
- Content Layout Guide: Position Constraints.
- Frame Layout Guide: Size Constraints (250 priority on the scroll direction).

# Debugging
- When using the Debug View Hieracy, it's very helpful to the print the description of the ui element to the console (via right click). You are then able to use the memory address to filter out the noise in the view hierachy.
- Accessbility Inspect has an audit tool and it is amazing!
