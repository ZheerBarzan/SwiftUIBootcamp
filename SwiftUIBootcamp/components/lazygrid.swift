import SwiftUI

// Defines the main view `lazygrid` which displays a grid of F1 drivers using the `LazyVGrid` layout
struct lazygrid: View {
    // Declares a grid layout with two flexible columns
    let F1Grid: [GridItem] = [
        GridItem(.flexible()), // First flexible column
        GridItem(.flexible()), // Second flexible column
    ]
    
    // A list of F1 drivers with their name, number, and team information
    let F1Teams: [F1GridComponentModel] = [
        F1GridComponentModel(DriverName: "Max Verstappen", DriverNumber: 1, DriverTeam: .RedBull),
        F1GridComponentModel(DriverName: "Lando Norris", DriverNumber: 4, DriverTeam: .Mclaren),
        F1GridComponentModel(DriverName: "Charles Leclerc", DriverNumber: 16, DriverTeam: .Ferrari),
        F1GridComponentModel(DriverName: "Oscar Piastri", DriverNumber: 81, DriverTeam: .Mclaren),
        F1GridComponentModel(DriverName: "Carlos Sainz", DriverNumber: 55, DriverTeam: .Ferrari),
        F1GridComponentModel(DriverName: "Goerge Russell", DriverNumber: 63, DriverTeam: .Mercedes),
        F1GridComponentModel(DriverName: "Lewis Hamilton", DriverNumber: 44, DriverTeam: .Mercedes),
        F1GridComponentModel(DriverName: "Sergio Perez", DriverNumber: 11, DriverTeam: .RedBull),
        F1GridComponentModel(DriverName: "Fernando Alonso", DriverNumber: 14, DriverTeam: .AstonMartin),
        F1GridComponentModel(DriverName: "Pierre Gasly", DriverNumber: 10, DriverTeam: .Alpine),
        F1GridComponentModel(DriverName: "Nico Hulkenberg", DriverNumber: 27, DriverTeam: .Haas),
        F1GridComponentModel(DriverName: "Yuki Tsunoda", DriverNumber: 22, DriverTeam: .Alphatauri),
        F1GridComponentModel(DriverName: "Lance Stroll", DriverNumber: 18, DriverTeam: .AstonMartin),
        F1GridComponentModel(DriverName: "Esteban Ocon", DriverNumber: 31, DriverTeam: .Alpine),
        F1GridComponentModel(DriverName: "Kevin Magnussen", DriverNumber: 20, DriverTeam: .Haas),
        F1GridComponentModel(DriverName: "Alex Albon", DriverNumber: 23, DriverTeam: .Williams),
        F1GridComponentModel(DriverName: "Daniel Ricciardo", DriverNumber: 3, DriverTeam: .Alphatauri),
        F1GridComponentModel(DriverName: "Zhou Guanyu", DriverNumber: 47, DriverTeam: .AlfaRomeo),
        F1GridComponentModel(DriverName: "Logen Sargeant", DriverNumber: 2, DriverTeam: .Williams),
        F1GridComponentModel(DriverName: "Valtteri Bottas", DriverNumber: 77, DriverTeam: .AlfaRomeo)
    ]
    
    // The body of the view, defining the layout and structure of the grid
    var body: some View {
        ScrollView {
            // A lazy grid that arranges the driver components in two columns with a spacing of 20
            LazyVGrid(columns: F1Grid, spacing: 20) {
                // ForEach is used to iterate over the F1Teams array and display each team in the grid
                ForEach(F1Teams, id: \.DriverNumber) { team in
                    // For each driver, create an F1GridComponent to display their info
                    F1GridComponent(
                        DriverName: team.DriverName,
                        DriverNumber: team.DriverNumber,
                        DriverTeam: team.DriverTeam
                    )
                }
            }
            .padding() // Adds padding around the grid
        }
    }
}

// Data model representing the details of an F1 driver
struct F1GridComponentModel {
    let DriverName: String // Driver's name
    let DriverNumber: Int  // Driver's race number
    let DriverTeam: F1Teams // Driver's team (enum)
}

// A view that displays a single F1 driver card, showing their name, number, and team color
struct F1GridComponent: View {
    // A dictionary that maps F1 teams to their respective colors
    let F1TeamsColors: [F1Teams: Color] = [
        .Mercedes: Color(red: 0.75, green: 0.75, blue: 0.75),
        .RedBull: Color(red: 0.0, green: 0.0, blue: 0.5),
        .Ferrari: .red,
        .Mclaren: .orange,
        .Alpine: .pink,
        .AstonMartin: .green,
        .Alphatauri: .blue,
        .Williams: Color(red: 0.678, green: 0.847, blue: 0.902),
        .Haas: .white,
        .AlfaRomeo: Color(red: 0.502, green: 0.0, blue: 0.0)
    ]
    
    // Driver details passed as parameters
    let DriverName: String
    let DriverNumber: Int
    let DriverTeam: F1Teams
    
    // Computed property to get the team color based on the driver's team
    var TeamColor: Color {
        F1TeamsColors[DriverTeam] ?? .gray // Default to gray if the team color is not found
    }
    
    // The body of the view that displays the driver card with their details
    var body: some View {
        RoundedRectangle(cornerRadius: 10) // Create a rounded rectangle as the background
            .fill(TeamColor) // Fill the rectangle with the team color
            .frame(height: 150) // Set the height of the rectangle
            .overlay(
                VStack { // Stack the content vertically
                    Text(DriverName) // Driver's name
                        .font(.headline) // Set font style
                        .foregroundColor(.black) // White text color
                    Text("#\(DriverNumber)") // Driver's number
                        .font(.subheadline) // Set font style
                        .foregroundColor(.black.opacity(0.8)) // Light white color for the number
                    Divider() // A divider to separate the name and number from the team
                        .frame(height: 2)
                        .background(Color.black.opacity(0.8)) // Light white divider color
                        .padding(.horizontal, 20) // Add horizontal padding to the divider
                    Text("\(DriverTeam.rawValue)") // Driver's team name
                        .font(.caption) // Set font style
                        .foregroundColor(.black.opacity(0.8)) // Light white color for the team name
                }
                .padding() // Add padding inside the VStack
            )
    }
}

// Enum representing the F1 teams, each with a raw string value
enum F1Teams: String, Hashable {
    case Mercedes
    case RedBull
    case Ferrari
    case Mclaren
    case Alpine
    case AstonMartin
    case Alphatauri
    case Williams
    case Haas
    case AlfaRomeo
}

// Preview code for rendering the view in Xcode
#Preview {
    lazygrid() // Preview the `lazygrid` view
}
