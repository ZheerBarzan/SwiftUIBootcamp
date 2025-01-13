//
//  asyncImage.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 13/1/25.
//

import SwiftUI

struct asyncImage: View {
    let url = URL(string: "https://picsum.photos/400")
    var body: some View {
        
        AsyncImage(url: url,content: { returnedImage in
            returnedImage
                .resizable()
                .scaledToFit()
                .cornerRadius(15)
                .frame(width: 200, height: 200 )
            
        }, placeholder: {
            profileView()
        })
        
    }
}

#Preview {
    asyncImage()
}
