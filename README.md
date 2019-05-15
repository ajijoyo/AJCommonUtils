# AJCommonUtils

[![Language](https://img.shields.io/badge/Swift-5-orange.svg)]()
[![CI Status](https://img.shields.io/travis/ajijoyo/AJCommonUtils.svg?style=flat)](https://travis-ci.org/ajijoyo/AJCommonUtils)
[![Version](https://img.shields.io/cocoapods/v/AJCommonUtils.svg?style=flat)](https://cocoapods.org/pods/AJCommonUtils)
[![License](https://img.shields.io/cocoapods/l/AJCommonUtils.svg?style=flat)](https://cocoapods.org/pods/AJCommonUtils)
[![Platform](https://img.shields.io/cocoapods/p/AJCommonUtils.svg?style=flat)](https://cocoapods.org/pods/AJCommonUtils)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

```
XCode 9.4
Swift 4
```

## Installation

AJCommonUtils is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'AJCommonUtils' //for swift 5
pod 'AJCommonUtils', '~> 0.1.3' //for swift 4++
```

## Used

### Language

Set `setDefaultLocale` at `didFinishLaunchingWithOptions` to initial Bundle spesific Language on first install 
by default value is `en` you should change prefered default language,
> Make sure you have settings `Localized.strings`  
> Everytime locale change you can observer using `NotificationCenter` with key `languageDidChanged`
```swift
Language.setDefaultLocale(language: "id")
```

function `setLocale` to set Bundle to spesific Language on runtime, non need to restart Apps
> Dont Forget to refresh entire UI after change language
```swift
Language.setLocale(language: "en")
```
  
function `localized` to change Language based on `Localized.Strings` with selected `setLocale`
```swift
let title = "welcome.example.title".localized

titleLabel.text = title
```
  
### Color

init color by hexString,by default `alpha` is 1.0 it value start from 0 to 1.0

```swift
UIColor(hexString: #ffffff, alpha: 0.5)
````

init color by RGB, by default `alpha` is 1.0 it value start from 0 to 1.0
```swift
UIColor(R: 255, G: 255, B: 255, alpha: 0.4)
```

extension of UIColor `lighter` change color more lighter not change alpha, default is 0.3 it value start from 0 to 1.0

```swift
UIColor.black.lighter(by: 0.3)
```

extension of UIColor `darker` change color more darker not change alpha, default is 0.3 it value start from 0 to 1.0

```swift
UIColor.black.darker(by: 0.3)
```

## Author

ajijoyo, self.ajiejoy@gmail.com

## License

AJCommonUtils is available under the MIT license. See the LICENSE file for more info.
