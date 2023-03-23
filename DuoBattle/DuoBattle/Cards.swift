//
//  Cards.swift
//  DuoBattle
//
//  Created by Tales Valente on 23/03/23.
//

import Foundation
import SwiftUI

struct Card: Identifiable {
    let id: Int
    let name: String
    let attack: Int
    let defense: Int
}

let cards = [
    Card(id: 1, name: "Card 1", attack: 10, defense: 5),
    Card(id: 2, name: "Card 2", attack: 7, defense: 8),
    Card(id: 3, name: "Card 3", attack: 12, defense: 3),
    // Add more cards here as needed
]


struct CardListView: View {
    var body: some View {
        List(cards) { card in
            VStack(alignment: .leading) {
                Text(card.name)
                HStack {
                    Text("Attack: \(card.attack)")
                    Text("Defense: \(card.defense)")
                }
            }
        }
    }
}
