# SunnyNavigation

[![CI Status](http://img.shields.io/travis/amaker/SunnyNavigation.svg?style=flat)](https://travis-ci.org/amaker/SunnyNavigation)
[![Version](https://img.shields.io/cocoapods/v/SunnyNavigation.svg?style=flat)](http://cocoapods.org/pods/SunnyNavigation)
[![License](https://img.shields.io/cocoapods/l/SunnyNavigation.svg?style=flat)](http://cocoapods.org/pods/SunnyNavigation)
[![Platform](https://img.shields.io/cocoapods/p/SunnyNavigation.svg?style=flat)](http://cocoapods.org/pods/SunnyNavigation)

SunnyNavigation is an Navigation library written in Swift.

##Screenshot

![演示1](http://7xt6c9.com2.z0.glb.clouddn.com/SunnyNavigation.png)

## Features

- [x] Release 0.1.1

## Requirements

- iOS 8.0+ / Mac OS X 10.9+ / tvOS 9.0+ / watchOS 2.0+
- Xcode 7.3+

## Communication

- If you **need help**, use [Stack Overflow](http://stackoverflow.com/questions/tagged/sunnynavigation). (Tag 'sunnynavigation')
- If you'd like to **ask a general question**, use [Stack Overflow](http://stackoverflow.com/questions/tagged/sunnynavigation).
- If you **found a bug**, open an issue.
- If you **have a feature request**, open an issue.
- If you **want to contribute**, submit a pull request.


## Usage


```swift

	override func viewDidLoad() {
	super.viewDidLoad()
		self.navigationItem.setItemWithTitle("Left", textColor:UIColor.blueColor(), size: 20, type: .left) 
	}


```
---

## Installation

> **Embedded frameworks require a minimum deployment target of iOS 8 or OS X Mavericks (10.9).**
>
> SunnyNavigation is no longer supported on iOS 7 due to the lack of support for frameworks. Without frameworks, running Travis-CI against iOS 7 would require a second duplicated test target. The separate test suite would need to import all the Swift files and the tests would need to be duplicated and re-written. This split would be too difficult to maintain to ensure the highest possible quality of the SunnyNavigation ecosystem.

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

> CocoaPods 0.39.0+ is required to build SunnyNavigation 0.1.0+.

To integrate SunnyNavigation into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

pod 'SunnyNavigation', '~> 0.1.0'
```

Then, run the following command:

```bash
$ pod install
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate SunnyNavigation into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "fishcafe/SunnyNavigation" ~> 0.1.0
```

Run `carthage update` to build the framework and drag the built `SunnyNavigation.framework` into your Xcode project.

### Manually

If you prefer not to use either of the aforementioned dependency managers, you can integrate SunnyNavigation into your project manually.

#### Embedded Framework

- Open up Terminal, `cd` into your top-level project directory, and run the following command "if" your project is not initialized as a git repository:

```bash
$ git init
```

- Add SunnyNavigation as a git [submodule](http://git-scm.com/docs/git-submodule) by running the following command:

```bash
$ git submodule add https://github.com/fishcafe/SunnyNavigation.git
```

- Open the new `SunnyNavigation` folder, and drag the `SunnyNavigation.xcodeproj` into the Project Navigator of your application's Xcode project.

> It should appear nested underneath your application's blue project icon. Whether it is above or below all the other Xcode groups does not matter.

- Select the `SunnyNavigation.xcodeproj` in the Project Navigator and verify the deployment target matches that of your application target.
- Next, select your application project in the Project Navigator (blue project icon) to navigate to the target configuration window and select the application target under the "Targets" heading in the sidebar.
- In the tab bar at the top of that window, open the "General" panel.
- Click on the `+` button under the "Embedded Binaries" section.
- You will see two different `SunnyNavigation.xcodeproj` folders each with two different versions of the `SunnyNavigation.framework` nested inside a `Products` folder.

> It does not matter which `Products` folder you choose from, but it does matter whether you choose the top or bottom `SunnyNavigation.framework`. 

- Select the top `SunnyNavigation.framework` for iOS and the bottom one for OS X.

> You can verify which one you selected by inspecting the build log for your project. The build target for `SunnyNavigation` will be listed as either `SunnyNavigation iOS` or `SunnyNavigation OSX`.

- And that's it!

> The `SunnyNavigation.framework` is automagically added as a target dependency, linked framework and embedded framework in a copy files build phase which is all you need to build on the simulator and a device.

---


## Author

amaker, itamaker@gmail.com


##Github

https://github.com/itamaker



## FAQ

### Security Disclosure

If you believe you have identified a security vulnerability with SunnyNavigation, you should report it as soon as possible via email to itamaker@gmail.com. Please do not post it to a public issue tracker.

## License

SunnyNavigation is released under the MIT license. See LICENSE for details.


