//
//  PhraseEntityQuery.swift
//  MotivationalPhraseIntetn
//
//  Created by Vítor Bruno on 15/10/25.
//

import Foundation
import AppIntents

struct PhraseEntityQuery: EntityQuery {
    @Dependency var modelData: ModelData //nosso model data q declaramos no AppDependencyManagar
    
    //função que vai buscar a entidade equivalente ao id
    func entities(for identifiers: [PhraseEntity.ID]) async throws -> [PhraseEntity] {
        var entities: [PhraseEntity] = []
        
        //pra cada frase transforma em uma entidade
        for phrase in modelData.mockPhrases {
            entities.append(PhraseEntity(motivacionalPhrase: phrase))
        }
        
        return entities
    }
}
