//
//  ContentView.swift
//  MotivationalPhraseIntetn
//
//  Created by Vítor Bruno on 15/10/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Image(systemName: "brain.head.profile")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Frases Aleatórias!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
