//
//  PhraseInten.swift
//  MotivationalPhraseIntetn
//
//  Created by Vítor Bruno on 15/10/25.
//
import Foundation
import AppIntents //não esquecer de importar AppIntents

struct RandomPhraseIntent: AppIntent {
    static var title: LocalizedStringResource = "Ouvir frase motivacional" //título do manager
    
    @Dependency var modelData: ModelData //@dependency pq pegamos lá do nosso AppdepenccyManager no arquivo app
    
    @MainActor
    func perform() async throws -> some ReturnsValue<PhraseEntity> & ProvidesDialog {
        let randomPhrase = modelData.getRandomPhrase() //pega do nosso mock as frases
        
        return .result(value: PhraseEntity(motivacionalPhrase: randomPhrase), //nosso resultado
                       dialog: "A frase do momento é: \(randomPhrase.text)" //frase que a siri vai responder
                    )
    }
}
