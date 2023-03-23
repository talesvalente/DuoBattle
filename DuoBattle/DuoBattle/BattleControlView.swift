
import SwiftUI
import SpriteKit

struct BattleControlView: View {

    @State private var playerCard = "card1"
    @State private var cpuCard = "card2"
    @State private var playerScore = 0
    @State private var cpuScore = 0

    var body: some View {
        ZStack {
           Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

           VStack {

               Spacer()

               Image("logo")
                   .resizable()
                   .scaledToFit()

               Spacer()

               HStack {
                   Spacer()
                   Image(playerCard)
                       .resizable()
                       .frame(maxWidth: 150, maxHeight: 250)
                   Spacer()
                   Image(cpuCard)
                       .resizable()
                       .frame(maxWidth: 150, maxHeight: 250)
                   Spacer()
               }
               .padding(50)
               Spacer()

               Button(action: {
                          // Generate a random number between 2 and 14
                          let playerRand = Int.random(in: 1...3)
                          let cpuRand = Int.random(in: 1...3)

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
