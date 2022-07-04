//
//  Ingredient.swift
//  PotionsMaster
//
//  Created by Simon Rofe on 4/7/2022.
//

import SwiftUI

class Ingredient: ObservableObject, Identifiable {
    let id = UUID()
    @Published var title = ""
    @Published var notes = ""
    @Published var quantity = 1
    @Published var bought = false
}
