//
//  FoodLabelView.swift
//  CSS545-HW1
//
//  Created by Kris on 10/4/24.
//

import SwiftUI

struct FoodLabelView: View
{
    
    let food: Food
    
    var body: some View 
    {
        LabeledContent {
            Text(food.price,
                 format: .currency(code: Locale.current.currency?.identifier ?? ""))
        } label: {
            Text("\(food.name) \(food.title)")
        }
    }
}

#Preview {
    FoodLabelView(food: Food.foods.first!)
}
