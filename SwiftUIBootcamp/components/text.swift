import SwiftUI

struct TextComponent: View {
    // the Text component takes a text variable
    var text: String

    var body: some View {
        Text(text)
            .font(.system(.largeTitle, design: .monospaced))
            .fontWeight(.regular)
    }
}

#Preview {
    // we have to specify it here
    TextComponent(text: "Hello, World!")
}
