//
//  modelBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 7/1/25.
//

import SwiftUI

struct DriverModel: Identifiable {
    var id = UUID()
    var name: String
    var displayName: String
    var country: String
    var championships: Int
    var onGrid: Bool
}

struct modelBootcamp: View {
    @State var users: [DriverModel] = [
        DriverModel(name: "Lewis Hamilton", displayName: "HAM", country: "UK", championships: 7, onGrid: true),
        DriverModel(name: "Max Verstappen", displayName: "VER", country: "Netherlands", championships: 4,onGrid: true),
        DriverModel(name: "Ayrton Senna", displayName: "SEN", country: "Brazil", championships: 3,onGrid: false),
        DriverModel(name: "Michael Schumacher", displayName: "SCH", country: "Germany", championships: 7,onGrid: false),
        DriverModel(name: "Sebastian Vettel", displayName: "VET", country: "Germany", championships: 4,onGrid: false),
        DriverModel(name: "Fernando Alonso", displayName: "ALO", country: "Spain", championships: 2,onGrid: true),
        DriverModel(name: "Kimi Raikkonen", displayName: "RAI", country: "Finland", championships: 1,onGrid: false),
        DriverModel(name: "Nico Hulkenberg", displayName: "HUL", country: "Germany", championships: 0,onGrid: true),
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack {
                        Image(systemName: "person.fill")
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("\(user.displayName), \(user.country)")
                                .font(.system(size: 15, weight: .regular, design: .monospaced))
                            Text(user.name)
                                .foregroundColor(.gray)
                                .font(.system(size: 10, weight: .regular, design: .monospaced))
                        }
                        Spacer()
                        
                        if user.onGrid{
                            Image(systemName: "checkmark")
                                .foregroundColor(.green)
                        }
                        Text("\(user.championships) 🏆")
                            .font(.system(size: 10, weight: .regular, design: .monospaced))
                    }
                }
            }
            .navigationTitle("F1 Drivers")
        }
    }
}

#Preview {
    modelBootcamp()
}
