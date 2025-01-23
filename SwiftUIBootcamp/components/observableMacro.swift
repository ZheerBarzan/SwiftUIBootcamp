//
//  observableMacro.swift
//  SwiftUIBootcamp
//
//  Created by zheer barzan on 23/1/25.
//

import SwiftUI

@Observable class observableMacroViewModel{
    var title: String = "Hello, World!"
}

struct observableMacro: View {
    @State var viewModel = observableMacroViewModel()
    var body: some View {
        VStack{
            Button(viewModel.title){
                viewModel.title = "Hello, SwiftUI!"
            }
            
            gibrishh(viewModel: viewModel)
            
            thirdView()
            
            
        }.environment(viewModel)
    }
}

struct gibrishh : View {
    @Bindable var viewModel: observableMacroViewModel
    var body: some View{
        
        Button(viewModel.title){
            viewModel.title = "ashfdklkahf!"
        }
    }
}

struct thirdView: View {
    @Environment(observableMacroViewModel.self) var viewModel
    var body: some View {
        Button(viewModel.title){
            viewModel.title = "Hello, zheer!"
        }
        
    }
}

#Preview {
    observableMacro()
}
