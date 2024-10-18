//
//  SettingsView.swift
//  CSS545-HW2
//
//  Created by Kris on 10/18/24.
//

import SwiftUI

struct SettingsView: View 
{
    @AppStorage("isDarkMode") private var isDarkMode = false
    @AppStorage("notificationsEnabled") private var notificationsEnabled = true
    
    var body: some View 
    {
        NavigationStack
        {
            Form 
            {
                Toggle(isOn: $isDarkMode) {
                    Text("Dark Mode")
                }
                
                Toggle(isOn: $notificationsEnabled) {
                    Text("Notifications")
                }
            }
            .navigationTitle("Settings")
            .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}

#Preview {
    SettingsView()
}
