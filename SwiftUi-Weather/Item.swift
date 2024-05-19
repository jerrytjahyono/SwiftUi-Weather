//
//  Item.swift
//  SwiftUi-Weather
//
//  Created by jerry tri tjahyono on 19/05/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
