//
//  ContentView.swift
//  MotivationalPhraseIntetn
//
//  Created by Vítor Bruno on 15/10/25.
//

import SwiftUI

struct ContentView: View {
    
    var modelData = ModelData()
    
    var body: some View {
        VStack(spacing: 16){
            Image(systemName: "brain.head.profile")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Frases Aleatórias!")
            Text("\(modelData.getRandomPhrase().text)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
