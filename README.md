# VText
![VTextBanner](https://user-images.githubusercontent.com/73557895/115100289-9e8e1100-9f76-11eb-8b16-964f9871b71f.png)

<img width="711" alt="스크린샷 2021-04-17 오후 12 05 33" src="https://user-images.githubusercontent.com/73557895/115100275-828a6f80-9f76-11eb-9925-855fee8684e8.png">

| <img width="840" alt="스크린샷 2021-04-17 오후 9 56 06" src="https://user-images.githubusercontent.com/73557895/115113957-d07b9380-9fc7-11eb-8642-c34d12a29dab.png"> 	| <img width="88" alt="스크린샷 2021-04-17 오후 9 56 11" src="https://user-images.githubusercontent.com/73557895/115113956-ceb1d000-9fc7-11eb-9f86-10eec19b2784.png"> 	|
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------	|---------------------------------------------------------------------------------------------------------------------------------------------------------------------	|
| Code                                                                                                                                                                 	| PreView                                                                                                                                                             	|

```swift
import SwiftUI
import VText

struct VText_Test: View {
    @State var text : String = "Hello, World!"
    var body: some View {
        HStack(spacing: 32){
            VText(text: _text)
            VText(text: _text, fontWeight: .bold, fontSize: 25, spacing: 10, alignment: .center)
        }
    }
}
```
