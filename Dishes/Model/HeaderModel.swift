//
//  HeaderModel.swift
//  Dishes
//
//  Created by Mehmet Seyhan on 31/01/2023.
//

import Foundation

//MARK: - HEADER MODEL

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
