//
//  MediaItemView.swift
//  CSS545-HW2
//
//  Created by Kris on 10/18/24.
//

import SwiftUI
import SwiftData

@Model
final class MediaItem
{
    @Attribute(.unique) var id: UUID
    var name: String
    var data: Data
    
    init(name: String, data: Data) {
        self.id = UUID()
        self.name = name
        self.data = data
    }
}
