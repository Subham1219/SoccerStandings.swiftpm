import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Soccer Leagues Standings")
                .font(.largeTitle)
            Image(systemName: "figure.soccer")
                .font(.largeTitle)
        
                .padding()
                .padding()
            
            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label Content@*/Text("Navigate")/*@END_MENU_TOKEN@*/
            }
        }
    }
}
