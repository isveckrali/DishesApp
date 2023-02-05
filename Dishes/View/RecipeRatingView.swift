//
//  RecipeRatingView.swift
//  Dishes
//
//  Created by Mehmet Seyhan on 6.02.2023.
//

import SwiftUI

struct RecipeRatingView: View {
    // MARK: -PROPERTIES
    var recipe: Recipe
    
    // MARK: -BODY
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...(recipe.rating), id: \.self){ _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(.yellow)
            }
        }
    }
}

// MARK: -PREVIEW
struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipesData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
