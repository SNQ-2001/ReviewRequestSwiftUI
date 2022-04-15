# ReviewRequestSwiftUI
[![GitHub issues](https://img.shields.io/github/issues/SNQ-2001/ReviewRequestSwiftUI)](https://github.com/SNQ-2001/ReviewRequestSwiftUI/issues)
[![GitHub forks](https://img.shields.io/github/forks/SNQ-2001/ReviewRequestSwiftUI)](https://github.com/SNQ-2001/ReviewRequestSwiftUI/network)
[![GitHub stars](https://img.shields.io/github/stars/SNQ-2001/ReviewRequestSwiftUI)](https://github.com/SNQ-2001/ReviewRequestSwiftUI/stargazers)
[![GitHub license](https://img.shields.io/github/license/SNQ-2001/ReviewRequestSwiftUI)](https://github.com/SNQ-2001/ReviewRequestSwiftUI/blob/main/LICENSE)
[![Twitter](https://img.shields.io/twitter/url?style=social)](https://twitter.com/intent/tweet?text=Wow:&url=https%3A%2F%2Fgithub.com%2FSNQ-2001%2FReviewRequestSwiftUI)
## 🛠️ Usage
**Customize Permission Texts**
```ContentView.swift
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
