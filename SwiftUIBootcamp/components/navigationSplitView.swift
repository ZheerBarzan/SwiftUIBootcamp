//
//  navigationSplitView.swift
//  SwiftUIBootcamp
//
//  Created by zheer barzan on 20/1/25.
//

import SwiftUI

struct navigationSplitView: View {
    @State var visiblity: NavigationSplitViewVisibility = .automatic
    @State var selection: FoodCatagory? = nil
    @State var selectedFruit: Fruits? = nil
    var body: some View {
        
        
        NavigationSplitView(columnVisibility: $visiblity){
            List(FoodCatagory.allCases, id: \.rawValue, selection: $selection){ catagory in
                    Button(catagory.rawValue.capitalized){
                        selection = catagory
                    }
                
            }.navigationTitle("catagories")
        } content: {
            if let selection{
                Group{
                    switch selection{
                    case .fruits:
                        List(Fruits.allCases, id: \.rawValue, selection: $selectedFruit){ fruit in
                                Button(fruit.rawValue.capitalized){
                                    selectedFruit = fruit
                                
                            }
                        }
                    case .vegetables:
                        Text("vegetables")
                    case .grains:
                        Text("grains")
                        
                    }
                }.navigationTitle(selection.rawValue.capitalized)
                
                
            }
        }detail: {
            Text(selectedFruit != nil ? "You have selected \(selectedFruit!.rawValue.capitalized)" : "No selection")

        }
        .navigationSplitViewStyle(.balanced)
    }
}

#Preview {
    navigationSplitView()
}


enum FoodCatagory: String, CaseIterable{
    case fruits = "Fruits"
    case vegetables = "Vegetables"
    case grains = "Grains"
    
}

enum Fruits: String, CaseIterable{
    case apple = "Apple"
    case banana = "Banana"
    case orange = "Orange"
}
