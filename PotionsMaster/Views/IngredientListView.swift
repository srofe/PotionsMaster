//
//  IngredientListView.swift
//  PotionsMaster
//
//  Created by Simon Rofe on 5/7/2022.
//

import SwiftUI

struct IngredientListView: View {
    @State private var ingredientFormIsPresented = false
    @State var ingredients: [Ingredient] = []
    @State var boughtIngredients: [Ingredient] = []
    @ViewBuilder var newIngredientButton: some View {
        Button(action: openNewIngredient) {
            Label("New Ingredient", systemImage: "plus.circle.fill")
        }
        .foregroundColor(.green)
        .sheet(isPresented: $ingredientFormIsPresented) {
            IngredientFormView(ingredient: Ingredient())
        }
    }

    var body: some View {
        List {
            Section("Ingredients") {
                if ingredients.isEmpty {
                    Text("Add some ingredients to the list🥬")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                ForEach(ingredients) { ingredient in
                    IngredientRow(ingredient: ingredient)
                }
                newIngredientButton
            }
            Section {
                if boughtIngredients.isEmpty {
                    Text("Buy some ingredients to have them listed here.")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                ForEach(boughtIngredients) { ingredient in
                    IngredientRow(ingredient: ingredient)
                }
            } header: {
                Text("Bought")
            } footer: {
                if !boughtIngredients.isEmpty {
                    Text("Swipe from right to left to delete an ingredient.")
                }
            }
        }
        .navigationTitle("Potions Master🧪")
    }
}

extension IngredientListView {
    func openNewIngredient() {
        ingredientFormIsPresented.toggle()
    }
}

struct IngredientListView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientListView()
    }
}
