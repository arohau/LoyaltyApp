import SwiftUI

struct LAText : View{
    var text: String
    var color: Color
    var bold: Bool
    
    var body: some View {
        Text(text)
            .font(.LAMainFont(size: Constants.Font.defaultSize, bold: bold))
            .foregroundColor(color)
    }
}
