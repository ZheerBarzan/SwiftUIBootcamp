import SwiftUI


struct ImageComponent: View {
    
    
    var imageName: String
    
    
    var body: some View{
        Image(imageName)
            .resizable()
        // these 2 work the same
            .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .frame(width: 300, height: 300)
            .clipped()
            
            // to change the color of a transparnt image
            //.renderingMode(.template)
            // or make the image as a template in the assets folder
            
    }

}

#Preview {
    ImageComponent(imageName: "kimi")
}
