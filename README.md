# ReviewRequestSwiftUI
[![GitHub issues](https://img.shields.io/github/issues/SNQ-2001/ReviewRequestSwiftUI)](https://github.com/SNQ-2001/ReviewRequestSwiftUI/issues)
[![GitHub forks](https://img.shields.io/github/forks/SNQ-2001/ReviewRequestSwiftUI)](https://github.com/SNQ-2001/ReviewRequestSwiftUI/network)
[![GitHub stars](https://img.shields.io/github/stars/SNQ-2001/ReviewRequestSwiftUI)](https://github.com/SNQ-2001/ReviewRequestSwiftUI/stargazers)
[![GitHub license](https://img.shields.io/github/license/SNQ-2001/ReviewRequestSwiftUI)](https://github.com/SNQ-2001/ReviewRequestSwiftUI/blob/main/LICENSE)
[![Twitter](https://img.shields.io/twitter/url?style=social)](https://twitter.com/intent/tweet?text=Wow:&url=https%3A%2F%2Fgithub.com%2FSNQ-2001%2FReviewRequestSwiftUI)

![ReviewRequestSwiftUI](https://user-images.githubusercontent.com/84154073/163719969-be6eed7e-328c-49c6-a79a-208dd863679e.png)

## 🖥️ Installation
### Requirements
- iOS 14

### Install

**Swift Package Manager**

You can install ReviewRequestSwiftUI into your Xcode project via SPM. To learn more about SPM, click here

For Xcode 12
   1. open your project and navigate to File → Swift Packages → Add Package Dependency...
   2. Paste the repository URL (https://github.com/SNQ-2001/ReviewRequestSwiftUI) and click Next.
 
For Xcode 13
   1. navigate to Files → Add Package
   2. Paste the repository URL (https://github.com/SNQ-2001/ReviewRequestSwiftUI) and click Next.

**CocoaPods**

You can also install ReviewRequestSwiftUI with Cocoapods. Add pod 'ReviewRequestSwiftUI' in your podfile:
```Ruby
platform :ios, '14.0'

target 'Your App' do
  use_frameworks!
  pod 'ReviewRequestSwiftUI'

end
```

## 🛠️ Usage
**Customize Texts**
```Swift
import SwiftUI

struct ContentView: View {
   @State var ShowReviewRequest = false
   var body: some View {
        Button(action: {
            ShowReviewRequest = true
        }) {
            Text("Review")
        }
        .ReviewRequest(
            ShowReviewRequest: $ShowReviewRequest,
            Title: "App Review",
            Header: "Thank you for your interest",
            Footer: "Please help us improve the user experience",
            Comment: "Thank you for your cooperation"
        )
   }
}
```
