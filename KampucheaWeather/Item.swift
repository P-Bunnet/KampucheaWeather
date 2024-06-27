//
//  Item.swift
//  KampucheaWeather
//
//  Created by Phoung Bunnet on 27/6/24.
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
