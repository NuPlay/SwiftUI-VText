import SwiftUI

public struct VText : View {
    @State var text : String
    
    var fontWeight : FontWeight = FontWeight(rawValue: "") ?? .medium
    var fontSize : CGFloat = 17
    var spacing : CGFloat = 6
    var alignment : HorizontalAlignment = .leading
    
    public init(text : State<String> ,fontWeight: FontWeight = FontWeight(rawValue: "") ?? .medium, fontSize: CGFloat = 17, spacing: CGFloat = 6, alignment: HorizontalAlignment = .leading) {
        self._text = text
        self.fontWeight = fontWeight
        self.fontSize = fontSize
        self.spacing = spacing
        self.alignment = alignment
    }
    
    @State private var textIndex : [String] = []
    
    public var body: some View{
        VStack(alignment: alignment, spacing: spacing){
            ForEach(Array(zip(textIndex, 0 ..< textIndex.count)), id: \.0) { item in
                switch fontWeight.rawValue{
                case "light" :
                    Text(textIndex[item.1])
                        .font(.system(size: fontSize))
                        .fontWeight(.light)
                    
                case "regular":
                    Text(textIndex[item.1])
                        .font(.system(size: fontSize))
                        .fontWeight(.regular)
                    
                case "medium":
                    Text(textIndex[item.1])
                        .font(.system(size: fontSize))
                        .fontWeight(.medium)
                    
                case "bold":
                    Text(textIndex[item.1])
                        .font(.system(size: fontSize))
                        .fontWeight(.bold)
                    
                case "heavy":
                    Text(textIndex[item.1])
                        .font(.system(size: fontSize))
                        .fontWeight(.heavy)
                    
                case "black":
                    Text(textIndex[item.1])
                        .font(.system(size: fontSize))
                        .fontWeight(.black)
                    
                default:
                    Text(textIndex[item.1])
                        .font(.system(size: fontSize))
                        .fontWeight(.regular)
                }
            }
        }
        .onAppear{
            for i in 0 ..< text.count {
                textIndex.append(String(text[text.index(text.startIndex, offsetBy: i)]))
            }
        }
        .onChange(of: text) { newValue in
            textIndex = []
            for i in 0 ..< text.count {
                textIndex.append(String(text[text.index(text.startIndex, offsetBy: i)]))
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
