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
    
    @State private var Drivers: [String: String] = [
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
                // F1 Teams Section
                Section(header: Text("F1 Teams")) {
                    ForEach(f1Teams, id: \.self) { team in
                        Text(team.capitalized)
                            .swipeActions(edge: .trailing) {
                                Button(role: .destructive) {
                                    deleteTeam(team: team)
                                } label: {
                                    Label("Delete", systemImage: "trash")
                                }
                            }
                            .swipeActions(edge: .leading) {
                                Button("Archive") {
                                    print("\(team) archived.")
                                }
                                .tint(.yellow)
                            }
                    }
                    .onMove(perform: moveItems)
                }
                
                // Drivers Section
                Section(header: Text("Drivers")) {
                    ForEach(f1Teams, id: \.self) { team in
                        if let driver = Drivers[team] {
                            Text("\(driver), \(team)")
                        } else {
                            Text("No driver assigned for \(team)")
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Formula 1 Teams")
            .navigationBarItems(
                leading: EditButton(),
                trailing: Button(action: addTeam) {
                    Image(systemName: "plus")
                }
            )
        }
    }
    
    // Deletes a team and its driver
    func deleteTeam(team: String) {
        if let index = f1Teams.firstIndex(of: team) {
            f1Teams.remove(at: index)
            Drivers.removeValue(forKey: team)
        }
    }
    
    // Moves items within the list
    func moveItems(from source: IndexSet, to destination: Int) {
        f1Teams.move(fromOffsets: source, toOffset: destination)
    }
    
    // Adds a new team with a placeholder driver
    func addTeam() {
        let newTeam = "New Team \(f1Teams.count + 1)"
        f1Teams.append(newTeam)
        Drivers[newTeam] = "New Driver"
    }
}

#Preview {
    ListSwipeAction()
}
