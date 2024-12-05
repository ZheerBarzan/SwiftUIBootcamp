import SwiftUI



struct BackgroundComponent: View {
    var body: some View {
            Image(systemName: "heart.fill")
                .font(.largeTitle)
                .foregroundColor(.white)
                .background(
                    
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.black, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)).frame(width: 100, height: 100)
                        .shadow(color: Color.primary.opacity(0.5),radius: 10, x: 0, y: 10)
                        .overlay(
                            Circle()
                                .fill(Color.red)
                                .frame(width: 35, height: 35)
                                .overlay(
                                    Text("5")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                )
                            
                            , alignment: .bottomTrailing
                        )
                )
    }
       
}

#Preview {
    BackgroundComponent()
}
