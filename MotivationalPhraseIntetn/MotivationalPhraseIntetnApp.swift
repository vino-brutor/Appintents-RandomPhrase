//
//  MotivationalPhraseIntetnApp.swift
//  MotivationalPhraseIntetn
//
//  Created by Vítor Bruno on 15/10/25.
//

import SwiftUI
import AppIntents

@main
struct MotivationalPhraseIntetnApp: App {
    
    init() {
        AppDependencyManager.shared.add(dependency: { ModelData() }) //usando o appDependencyManager, compartilhamos nosso mock com tudo que for relacionado com os intents (ai quando formso acessar o modelData nesses arquivos usamos o @Dependency)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
