//
//  PhraseEntity.swift
//  MotivationalPhraseIntetn
//
//  Created by Vítor Bruno on 15/10/25.
//

import Foundation
import AppIntents

//chat do xcode bagunçou tood codigo qunado eu não queria, por isso os comentários em ingles

// MARK: - App Entity representing a motivational phrase
struct PhraseEntity: AppEntity, Identifiable, Hashable {
    var id: UUID

    var text: String

    // Convenience initializer used by the query to construct entities
    init(motivacionalPhrase: MotivationalPhrase) {
        self.id = motivacionalPhrase.id
        self.text = motivacionalPhrase.text
    }

    //frase de titulo para a entity
    static var typeDisplayRepresentation: TypeDisplayRepresentation = .init(name: "FraseMotivacional")

    //como a etity vai se parecer para a siri
    var displayRepresentation: DisplayRepresentation {
        DisplayRepresentation(title: "\(text)")
    }

    // Tell AppIntents which query type to use for this entity. The associated type of
    // PhraseEntityQuery is explicitly PhraseEntity, satisfying the protocol requirement
    // that `(some EntityQuery).Entity == PhraseEntity`.
    static var defaultQuery: PhraseEntityQuery = PhraseEntityQuery()
}
