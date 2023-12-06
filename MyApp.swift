import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            
            TabView {
                laLiga()
                    .tabItem {
                        Label("La Liga", systemImage: "list.dash")
                        
                    }
                premierLeague()
                    .tabItem {
                        Label("Premier League", systemImage: "list.dash")
                        
                    }
                bundesliga()
                    .tabItem {
                        Label("Bundesliga", systemImage: "list.dash")
                    }
            }
        }
    }
}
