import SwiftUI



struct BackgroundComponent: View {
    var body: some View {
       Text("Hello, World!")
       .background(
    
        ShapesComponent()
            
       )
       .overlay(
        
        
        ColorsComponent()
                
       )
       .ignoresSafeArea()
                
        }
    }

#Preview {
    BackgroundComponent()
}
