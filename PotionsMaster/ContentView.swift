//
//  ContentView.swift
//  PotionsMaster
//
//  Created by Simon Rofe on 4/7/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            IngredientListView(
                ingredients: IngredientMock.ingredientsMock,
                boughtIngredients: IngredientMock.boughtIngredientsMock
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
