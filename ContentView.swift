import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color.black
                    .ignoresSafeArea()
                
                VStack {
                    Text("Soccer Leagues Standings")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    Image(systemName: "soccerball")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    
                        Spacer()
                    
                    
                    NavigationLink("Premier League") {
                        premierLeague()
                    }
                    .foregroundColor(.blue)
                    .font(.system(size: 24))
                    
                    .padding()
                    
                    NavigationLink("La Liga") {
                        laLiga()
                    }
                    .foregroundColor(.orange)
                    .font(.system(size: 24))
                    
                    .padding()
                    
                    NavigationLink("Bundesliga") {
                        bundesliga()
                    }
                    .foregroundColor(.red)
                    .font(.system(size: 24))
                }
                
                
            }
        }
    }
}
