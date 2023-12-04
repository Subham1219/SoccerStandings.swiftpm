import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            
            TabView {
                laLiga().tabItem {
                    Text("Laliga")
                        .font(.system(size: 34))
                    Spacer()
                }
            }
            
        }
    }
}
