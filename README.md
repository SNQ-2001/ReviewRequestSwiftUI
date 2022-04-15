# ReviewRequestSwiftUI

## 🛠️ Usage
**Customize Permission Texts**
```
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
