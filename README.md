# VText
![VTextBanner](https://user-images.githubusercontent.com/73557895/115100289-9e8e1100-9f76-11eb-8b16-964f9871b71f.png)

<img width="711" alt="스크린샷 2021-04-17 오후 12 05 33" src="https://user-images.githubusercontent.com/73557895/115100275-828a6f80-9f76-11eb-9925-855fee8684e8.png">

| <img width="661" alt="스크린샷 2021-04-17 오후 12 12 59" src="https://user-images.githubusercontent.com/73557895/115100276-83bb9c80-9f76-11eb-9bb9-27c7dd648bc7.png"> 	| <img width="330" alt="스크린샷 2021-04-17 오후 12 13 16" src="https://user-images.githubusercontent.com/73557895/115100277-85856000-9f76-11eb-9918-812266ae21e2.png"> 	|
|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------	|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------	|
| Code                                                                                                                                                                  	| PreView                                                                                                                                                               	|


```swift
import SwiftUI
import VText

struct VText_Test: View {
    
    var body: some View {
        VStack{
            HStack(spacing: 32){
                VText(text: "Hello World!")
                VText(text: "Hello World!", fontWeight: .black, fontSize: 25, spacing: 10, alignment: .center)
            }
        }
    }
}
```

## Known Issues

- If the number of texts decreases, it crashes, and if the number of texts increases, it is not displayed properly.
  - ex) Hello = 5, Hi = 2
