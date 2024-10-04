//
//  FoodModel.swift
//  CSS545-HW1
//
//  Created by Kris on 10/4/24.
//

import SwiftUI

struct Food: Identifiable
{
    var id: String { "\(name)_\(title)" }
    let name: String
    let title: String
    let description: String
    let price: Double
}

extension Food {
    static let foods: [Food] = [
        Food(name: "🌯",
             title: "Burrito",
             description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
             price: 7.99),
        Food(name: "🍜",
             title: "Ramen",
             description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
             price: 10.99),
        Food(name: "🍔",
             title: "Burger",
             description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
             price: 4.99),
        Food(name: "🍕",
             title: "Pizza",
             description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
             price: 1.99),
        Food(name: "🌭",
             title: "Hotdog",
             description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
             price: 0.99),
        Food(name: "🧆",
             title: "Falafel",
             description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
             price: 2.99),
        Food(name: "🍝",
             title: "Spag Bol",
             description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
             price: 12.99)
    ]
}

