import SwiftUI

public struct VText : View {
    var text : String
    
    var fontWeight : FontWeight = FontWeight(rawValue: "") ?? .medium
    var fontSize : CGFloat = 17
    var spacing : CGFloat = 6
    var alignment : HorizontalAlignment = .leading
    
//    init(text: String) {
//        self.text = text // Error: Cannot assign value of type 'String' to type 'State<String>'
//    }
    
    public init(text : String ,fontWeight: FontWeight = FontWeight(rawValue: "") ?? .medium, fontSize: CGFloat = 17, spacing: CGFloat = 6, alignment: HorizontalAlignment = .leading) {
        self.text = text
        self.fontWeight = fontWeight
        self.fontSize = fontSize
        self.spacing = spacing
        self.alignment = alignment
    }
   
    
    public var body: some View{
        VStack(alignment: alignment, spacing: spacing){
            ForEach(0 ..< text.count) { textIndex in
                switch fontWeight.rawValue{
                case "light" :
                    Text(String(text[text.index(text.startIndex, offsetBy: textIndex)]))
                        .font(.system(size: fontSize))
                        .fontWeight(.light)
                    
                case "regular":
                    Text(String(text[text.index(text.startIndex, offsetBy: textIndex)]))
                        .font(.system(size: fontSize))
                        .fontWeight(.regular)
                    
                case "medium":
                    Text(String(text[text.index(text.startIndex, offsetBy: textIndex)]))
                        .font(.system(size: fontSize))
                        .fontWeight(.medium)
                    
                case "bold":
                    Text(String(text[text.index(text.startIndex, offsetBy: textIndex)]))
                        .font(.system(size: fontSize))
                        .fontWeight(.bold)
                    
                case "heavy":
                    Text(String(text[text.index(text.startIndex, offsetBy: textIndex)]))
                        .font(.system(size: fontSize))
                        .fontWeight(.heavy)
                    
                case "black":
                    Text(String(text[text.index(text.startIndex, offsetBy: textIndex)]))
                        .font(.system(size: fontSize))
                        .fontWeight(.black)
                    
                default:
                    Text(String(text[text.index(text.startIndex, offsetBy: textIndex)]))
                        .font(.system(size: fontSize))
                        .fontWeight(.regular)
                }
            }
        }
    }
}

public enum FontWeight: String {
    case light = "light"
    case regular = "regular"
    case medium = "medium"
    case bold = "bold"
    case heavy = "heavy"
    case black = "black"
    
}
