//
//  FoodDetailView.swift
//  CSS545-HW1
//
//  Created by Kris on 10/4/24.
//

import SwiftUI

struct FoodDetailView: View 
{
    
    let food: Food
    
    var body: some View 
    {
        List 
        {
            Section {
                LabeledContent("Icon", value: food.name)
                LabeledContent("Name", value: food.title)
                LabeledContent {
                    Text(food.price,
                         format: .currency(code: Locale.current.currency?.identifier ?? ""))
                } label: {
                    Text("Price")
                }
            }
            
            Section("Description") {
                Text(food.description)
            }
            
        }
        .navigationTitle("Item")
    }
}

#Preview {
    FoodDetailView(food: Food.foods.first!)
}
