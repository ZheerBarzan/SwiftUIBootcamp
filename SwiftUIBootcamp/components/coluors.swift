import SwiftUI

struct ColorsComponent: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                // adaptive color based on light or dark mode
                // Color.primary
                // color literal of cyan
                // Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
                // system colors
                Color(UIColor.secondarySystemBackground)
            )
            .frame(width: 300, height: 300)
            .shadow(color: Color.primary.opacity(0.3), radius: 10, x: 10, y: 10)
    }
}

#Preview {
    ColorsComponent()
}
