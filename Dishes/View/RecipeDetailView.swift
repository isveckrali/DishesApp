//
//  RecipeDetailView.swift
//  Dishes
//
//  Created by Mehmet Seyhan on 6.02.2023.
//

import SwiftUI

struct RecipeDetailView: View {
    // MARK: -PROPERTIES
    var recipe: Recipe
    
    // MARK: -BODY
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

// MARK: -PREVIEW
struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipesData[0])
    }
}
