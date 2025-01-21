//
//  contentUnavailable.swift
//  SwiftUIBootcamp
//
//  Created by zheer barzan on 21/1/25.
//

import SwiftUI

struct contentUnavailable: View {
    var body: some View {
        if #available(iOS 15.0, *) {
            ContentUnavailableView(
                "Sorry, we couldn't find any content.",
                systemImage:  "exclamationmark.triangle",
                description: Text("Please try again later.")
            )
        }
    }
}

#Preview {
    contentUnavailable()
}
