//
//  IconsService.swift
//  AutmnSchool24
//
//  Created by Emil Shpeklord on 08.09.2024.
//

// MARK: - НЕ ТРОГАЕМ

import UIKit

struct IconsFabric {
    static func getModelSections() -> [IconsSectionModel] {
        [
            .init(title: "First", icons: [.init(title: "Star",
                                                subtitle: "ISSA STAR",
                                                image: .init(systemName: "star"),
                                                description: []),
                                          .init(title: "StarFilled",
                                                subtitle: "ISSA STAR FILLED",
                                                image: .init(systemName: "star.fill"),
                                                description: ["it is another star",
                                                              "description"])]),
            .init(title: "Second", icons: [.init(title: "Trash",
                                                subtitle: "ISSA TRASH",
                                                image: .init(systemName: "trash"),
                                                description: []),
                                          .init(title: "TrashFilled",
                                                subtitle: "ISSA TRASH FILLED",
                                                image: .init(systemName: "trash.fill"),
                                                description: ["it is another trash",
                                                              "description"])])
        ]
    }
}

struct IconsSectionModel: Hashable {
    let title: String
    let icons: [IconModel]
    
    static func == (lhs: IconsSectionModel, rhs: IconsSectionModel) -> Bool {
        lhs.title == rhs.title
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
    }
}

struct IconModel: Hashable {
    let title: String
    let subtitle: String
    let image: UIImage?
    let description: [String]
    
    static func == (lhs: IconModel, rhs: IconModel) -> Bool {
        lhs.title == rhs.title
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
    }
}
