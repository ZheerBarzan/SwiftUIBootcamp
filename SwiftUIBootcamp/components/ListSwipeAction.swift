//
//  ListSwipeAction.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 13/1/25.
//

import SwiftUI

struct ListSwipeAction: View {
    @State private var f1Teams = [
        "Mercedes",
        "Ferrari",
        "Red Bull",
        "McLaren",
        "Aston Martin",
        "Alpine",
        "Alpha Tauri",
        "Alfa Romeo",
        "Williams",
        "Haas"
    ]
    
    @State private var Drivers: [String:String] = [
        "Mercedes": "Lewis Hamilton",
        "Ferrari": "Charles Leclerc",
        "Red Bull": "Max Verstappen",
        "McLaren": "Lando Norris",
        "Aston Martin": "Sebastian Vettel",
        "Alpine": "Fernando Alonso",
        "Alpha Tauri": "Pierre Gasly",
        "Alfa Romeo": "Kimi Raikkonen",
        "Williams": "George Russell",
        "Haas": "Nico Hulkenberg"
        
    ]
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("F1 Teams")) {
                    ForEach(f1Teams, id: \.self) { team in
                        Text(team.capitalized)
                            .swipeActions(edge: .trailing,
                                          allowsFullSwipe: true,
                                          content:{
                                Button("delete"){
                                    
                                }.tint(.red)
                                
                                
                            })
                            .swipeActions(edge: .leading,
                                          allowsFullSwipe: false){
                                Button("Archive"){
                                    deleteItems(at: team.id)
                                }.tint(.yellow)
                            }
                    }
                    .onDelete(perform: deleteItems)
                    .onMove(perform: moveItems)
                }
                
                Section(header: Text("Drivers")) {
                    ForEach(f1Teams, id: \.self) { team in
                        Text("\(Drivers[team]!), \(team)")
                    }
                }
            }
            .accentColor(.purple)
            .listStyle(DefaultListStyle())
            .navigationTitle("Formula 1 Teams")
            .navigationBarItems(leading: EditButton(), trailing: Button(action: addItem, label: {
                Image(systemName: "plus")
            }))
        }
        .accentColor(.red)
    }
    
    // Deletes selected items from the list
    func deleteItems(at offsets: IndexSet) {
        f1Teams.remove(atOffsets: offsets)
    }
    
    // Moves items within the list
    func moveItems(from source: IndexSet, to destination: Int) {
        f1Teams.move(fromOffsets: source, toOffset: destination)
    }
    
    func addItem() {
        f1Teams.append("New Team")
    }
}

#Preview {
    ListSwipeAction()
}
