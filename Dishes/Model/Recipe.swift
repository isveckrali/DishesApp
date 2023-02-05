//
//  Recipe.swift
//  Dishes
//
//  Created by Mehmet Seyhan on 4.02.2023.
//

import Foundation

// MARK: - RECIPE MODEL

struct Recipe: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var instructions: [String]
    var igrendients: [String]
}
