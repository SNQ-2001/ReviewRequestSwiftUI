# ReviewRequestSwiftUI
[![Version](https://img.shields.io/badge/version-1.0.0-blue)](https://github.com/SNQ-2001/Twifter)
[![License](https://img.shields.io/badge/License-MIT-green)](https://github.com/SNQ-2001/Twifter/blob/main/LICENSE)
[![Twitter](https://img.shields.io/twitter/follow/_SNQ?style=social)](https://twitter.com/_SNQ)

![ReviewRequestSwiftUI](https://user-images.githubusercontent.com/84154073/163719969-be6eed7e-328c-49c6-a79a-208dd863679e.png)

This project was created with reference to PermissionsSwiftUI.

If you like the project, please `Star ⭐️`

## Requirements

- iOS 14

## Install

**- Swift Package Manager -**

You can install ReviewRequestSwiftUI into your Xcode project via SPM. To learn more about SPM, click here

For Xcode 12
   1. open your project and navigate to File → Swift Packages → Add Package Dependency...
   2. Paste the repository URL (https://github.com/SNQ-2001/ReviewRequestSwiftUI) and click Next.
 
For Xcode 13
   1. navigate to Files → Add Package
   2. Paste the repository URL (https://github.com/SNQ-2001/ReviewRequestSwiftUI) and click Next.

**- CocoaPods -**

You can also install ReviewRequestSwiftUI with CocoaPods. 

Add pod 'ReviewRequestSwiftUI' in your podfile:
```Ruby
platform :ios, '14.0'

target 'Your App' do
  use_frameworks!
  pod 'ReviewRequestSwiftUI'

end
```

## 🛠️ Usage
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

|1|2|
|---|---|
|![Simulator Screen Shot - iPhone 12 - 2022-04-18 at 00 45 37](https://user-images.githubusercontent.com/84154073/163723026-b0444739-ccb8-43c6-b539-f03fd51e4c78.png)|![Simulator Screen Shot - iPhone 12 - 2022-04-18 at 00 45 43](https://user-images.githubusercontent.com/84154073/163723035-c7185a35-b3c6-45df-b8e0-4a0308605f9e.png)|
