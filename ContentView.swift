import SwiftUI

struct Standing: Codable {
    // Define the structure to represent standing data
    let league_name: String
    let team_name: String
    let overall_league_position: String
}

struct ContentView: View {
    @State private var standings: [Standing] = []

    var body: some View {
        NavigationView {
            List(standings, id: \.team_name) { standing in
                VStack(alignment: .leading) {
                    Text("\(standing.team_name)")
                        .font(.headline)
                    Text("Position: \(standing.overall_league_position)")
                        .font(.subheadline)
                }
            }
            .navigationTitle("Soccer Standings")
            .onAppear(perform: loadData)
        }
    }

    func loadData() {
        guard let url = URL(string: "https://api-football-standings.azharimm.site/leagues") else {
            print("Invalid URL")
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let standings = try JSONDecoder().decode([Standing].self, from: data)
                    DispatchQueue.main.async {
                        self.standings = standings
                    }
                } catch {
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
