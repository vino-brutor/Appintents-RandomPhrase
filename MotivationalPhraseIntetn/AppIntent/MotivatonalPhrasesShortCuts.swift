//
//  MotivatonalPhrasesShortCuts.swift
//  MotivationalPhraseIntetn
//
//  Created by Vítor Bruno on 15/10/25.
//

import Foundation
import AppIntents

struct MotivatonalPhrasesShortCuts: AppShortcutsProvider {
    static var appShortcuts: [AppShortcut] { //criamos nossa lsitinha de shortcuts, no caso uma variável computada
        
        //Cada AppshortCut() representa um atalho unico pro nosso app, podemos colocar eles todos nessa lisa
        AppShortcut(intent: RandomPhraseIntent(),
                    phrases:[ //aqui em phrases colcoa diferentes frases q o usuário poderia usar para pedir o comando da intent pra siri, quando a siri ouvir essas frases, ela vai ativar a ação
                        
                        //"\(.applicationName)" pra caso queiramos incluir o noem do app
                        "Ouvir frase do dia no \(.applicationName)",
                        "Abrir frase do dia no \(.applicationName)",
                        "Falar frase do dia no \(.applicationName)",
                        "Ouvir frase motivacional no \(.applicationName)",
                        "Abrir frase motivacional no \(.applicationName)" //apple obriga a color o .aplicationName em todas as frases pra evitar ambiguidade entre apps
                        ],
                    shortTitle: "Ouvir frase",
                    systemImageName: "brain.head.profile")
    }
    
    
}
