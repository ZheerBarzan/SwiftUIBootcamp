//
//  pickerColor.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 24/12/24.
//

import SwiftUI

struct pickerColor: View {
    @State private var selectedColor: Color = .red
    var body: some View {
        ZStack{
            selectedColor.edgesIgnoringSafeArea(.all)
            VStack{
                ColorPicker("Pick a color",
                            selection: $selectedColor,
                            supportsOpacity: true)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
            }.padding()
        }
    }
}

#Preview {
    pickerColor()
}
