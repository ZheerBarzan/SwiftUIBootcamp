//
//  toolBarbootcamp.swift
//  SwiftUIBootcamp
//
//  Created by zheer barzan on 17/1/25.
//

import SwiftUI

struct toolBarbootcamp: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.indigo.ignoresSafeArea()
                ScrollView{
                    ForEach(0..<10){ index in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .frame(height: 150)
                    }
                    
                }
                
            }.navigationTitle("ToolBar")
                .toolbar{
                    ToolbarItem(placement: .topBarLeading) {
                        Image(systemName: "gear")
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        Image(systemName: "plus")
                    }
                }
                .toolbarBackground(.automatic, for: .navigationBar)
                .toolbarColorScheme(.dark, for: .navigationBar)
                    
            
            
        }
    }
}

#Preview {
    toolBarbootcamp()
}
