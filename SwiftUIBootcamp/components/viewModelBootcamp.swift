//
//  viewModelBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 8/1/25.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    @Published private(set) var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Apple", count: 5)
        let fruit2 = FruitModel(name: "Banana", count: 7)
        let fruit3 = FruitModel(name: "Orange", count: 3)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.fruitArray = [fruit1, fruit2, fruit3]
            self.isLoading = false
        }
    }
    
    func deleteFruit(at offsets: IndexSet) {
        fruitArray.remove(atOffsets: offsets)
    }
}

struct viewModelBootcamp: View {
    
    //@StateObject use at createion of the view
    //@ObservedObject use when you crate subviews or use in other views
    @StateObject private var fruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
            if fruitViewModel.isLoading {
                ProgressView()
                    .navigationTitle("Loading...")
            } else {
               
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text(fruit.name)
                            Spacer()
                            Text("\(fruit.count)")
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                    }
                }
                .navigationTitle("Fruits")
                .navigationBarItems(trailing: NavigationLink(destination: SecondScreen(fruitViewModel: fruitViewModel), label: {
                    Image(systemName: "arrow.right")
                }))
                
            
        }
    }
}

struct SecondScreen: View {
    @Environment(\.presentationMode) var presentation
    @ObservedObject var fruitViewModel: FruitViewModel
    var body: some View {
        ZStack{
            Color.red.edgesIgnoringSafeArea(.all)
            
            
                
            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    HStack {
                        Text(fruit.name)
                    }
                }
                Button(action: {
                    presentation.wrappedValue.dismiss()
                    
                }, label: {
                    Text("Go Back")
                        .foregroundColor(.white)
                })
            }
        }
    }
}

#Preview {
    viewModelBootcamp()
}
