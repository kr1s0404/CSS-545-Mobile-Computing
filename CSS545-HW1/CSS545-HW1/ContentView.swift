//
//  ContentView.swift
//  CSS545-HW1
//
//  Created by Kris on 10/3/24.
//

import SwiftUI

struct ContentView: View 
{
    var body: some View 
    {
        NavigationStack
        {
            List(Food.foods) { food in
                NavigationLink(value: food) {
                    FoodLabelView(food: food)
                }
            }
            .navigationTitle("Menu")
            .navigationDestination(for: Food.self, destination: { FoodDetailView(food: $0) })
        }
    }
}

#Preview {
    ContentView()
}
