import SwiftUI

struct IconComponent: View {
    var body: some View {
        VStack(spacing: 0) { // No fixed spacing between items, we'll balance with flexible frames
            VStack {
                Image(systemName: "heart.fill")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                TextComponent(text: "Favorite!")
            }
            .frame(maxHeight: .infinity) // Each group gets equal height

            VStack {
                Image(systemName: "message.fill")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                TextComponent(text: "Comment!")
            }
            .frame(maxHeight: .infinity)

            VStack {
                Image(systemName: "paperplane.fill")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                TextComponent(text: "Share!")
            }
            .frame(maxHeight: .infinity)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity) // Make the VStack fill the parent
       
    }
}

#Preview {
    IconComponent()
}
