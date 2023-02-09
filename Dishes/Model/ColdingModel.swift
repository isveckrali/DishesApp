//
//  Coolding.swift
//  Dishes
//
//  Created by Mehmet Seyhan on 8.02.2023.
//

import Foundation

// MARK: COOLDING MODEL

struct Colding: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
