//
//  CSS545_HW2App.swift
//  CSS545-HW2
//
//  Created by Kris on 10/17/24.
//

import SwiftUI
import SwiftData

@main
struct CSS545_HW2App: App 
{
    var body: some Scene 
    {
        WindowGroup 
        {
            ContentView()
        }
        .modelContainer(for: PhotoItem.self)
    }
}
