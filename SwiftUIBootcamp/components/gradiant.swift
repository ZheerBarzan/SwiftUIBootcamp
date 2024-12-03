import SwiftUI

struct GradientComponent: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                // only use linear gradient thats all
                // linear gradient
                // LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .top, endPoint: .bottom)
                // LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .frame(width: 300, height: 300)
    }
}

#Preview {
    GradientComponent()
}
