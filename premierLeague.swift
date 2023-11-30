//
//  premierLeague.swift
//  SoccerStandings
//
//  Created by Patryk Moczydlowski on 11/28/23.
//

import SwiftUI

struct premierLeague: View {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack{
                Image("Prembanner")
                    .resizable()
                    .scaledToFit()
                Spacer()
                
                
            }
        }
        

    }
        struct premierLeague_Previews: PreviewProvider {
            static var previews: some View {
                premierLeague()
            }
        }
    }

