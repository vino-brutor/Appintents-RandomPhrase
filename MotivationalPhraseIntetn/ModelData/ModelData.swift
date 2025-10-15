//
//  ModelData.swift
//  MotivationalPhraseIntetn
//
//  Created by Vítor Bruno on 15/10/25.
//

class ModelData {
    
    let mockPhrases = [
        MotivationalPhrase(text: "Você é capaz de coisas incríveis."),
        MotivationalPhrase(text: "Cada desafio é uma oportunidade de crescimento."),
        MotivationalPhrase(text: "Hoje é um novo dia para brilhar."),
        MotivationalPhrase(text: "Acreditar em si mesmo é o primeiro passo para o sucesso."),
        MotivationalPhrase(text: "Sua positividade inspira os outros ao seu redor.")
    ]
    
    func getRandomPhrase() -> MotivationalPhrase {
        guard let motivationalPhrase = mockPhrases.randomElement() else { fatalError() }
        return motivationalPhrase
    }
}
