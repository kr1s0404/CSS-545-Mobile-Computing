//
//  PhotoItem.swift
//  CSS545-HW2
//
//  Created by Kris on 10/18/24.
//

import SwiftUI
import SwiftData

@Model
final class PhotoItem: Identifiable, Hashable
{
    @Attribute(.unique) var id: UUID
    var data: Data
    var caption: String
    
    init(data: Data, caption: String) {
        self.id = UUID()
        self.data = data
        self.caption = caption
    }
    
    static func == (lhs: PhotoItem, rhs: PhotoItem) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
