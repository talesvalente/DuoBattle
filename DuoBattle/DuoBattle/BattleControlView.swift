
import SwiftUI
import SpriteKit

struct BattleControlView: View {

    @State private var playerCard  = "card"+String(Int.random(in: 1...5))
    @State private var cpuCard     = "card"+String(Int.random(in: 1...5))
    @State private var playerScore = 0
    @State private var cpuScore    = 0

    var body: some View {
        ZStack {
           Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

           VStack {
               Image("logo")
                   .resizable()
                   .scaledToFit()

               Spacer()

               HStack {
                   Image(playerCard)
                       .resizable()
                       .scaledToFit()
                   
               }
               .padding(.top, 10)

               Spacer()

               Button(action: {

                          let playerRand = Int.random(in: 1...5)
                          let cpuRand = Int.random(in: 1...5)

                          // Update the cards
                          playerCard = "card" + String(playerRand)
                          cpuCard = "card" + String(cpuRand)

                          // Update the score
                          if playerRand > cpuRand {
                             playerScore += 1
                          }
                          else if cpuRand > playerRand {
                             cpuScore += 1
                          }

                       },
                       label: {
                          Image("actionButton")
                       .resizable()
                       .frame(maxWidth: 100, maxHeight: 50)
                       .padding(30)

                       })

               Spacer()

               HStack {

                   Spacer()

                   VStack {
                       Text("Player")
                           .font(.headline)
                           .foregroundColor(Color.white)
                           .padding(.bottom, 10.0)
                       Text(String(playerScore))
                           .font(.largeTitle)
                           .foregroundColor(Color.white)
                   }

                   Spacer()

                   VStack {
                       Text("CPU")
                           .font(.headline)
                           .foregroundColor(Color.white)
                           .padding(.bottom, 10.0)
                       Text(String(cpuScore))
                           .font(.largeTitle)
                           .foregroundColor(Color.white)
                   }
                   Spacer()
               }
               Spacer()

           }
           .padding(70)

        }
    }
}
