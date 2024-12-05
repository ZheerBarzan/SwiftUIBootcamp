import SwiftUI

struct ShapesComponent: View {
    var body: some View {
        ZStack {
            // circle built in swift
            Circle().fill(Color.red).stroke(Color.black, lineWidth: 5).frame(width: 400, height: 400)
            // rectangle built in swift
            Rectangle().fill(Color.green).stroke(Color.black, lineWidth: 5).frame(width: 250, height: 250)
            // tringle made a whole new file called triangle
            Triangle().fill(Color.blue).stroke(Color.black, lineWidth: 5).frame(width: 250, height: 250)
        }
    }
}

#Preview {
    ShapesComponent()
}
