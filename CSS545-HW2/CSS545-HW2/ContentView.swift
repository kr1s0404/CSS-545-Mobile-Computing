//
//  ContentView.swift
//  CSS545-HW2
//
//  Created by Kris on 10/17/24.
//

import SwiftUI
import SwiftData
import PhotosUI

struct ContentView: View
{
    var body: some View
    {
        TabView {
            PhotoListView()
                .tabItem {
                    Label("Photos", systemImage: "photo.on.rectangle")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }
    }
}

#Preview {
    ContentView()
}
