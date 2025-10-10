//
//  local.swift
//  localDatabase_swiftData
//
//  Created by MacBook on 03/10/25.
//

import Foundation
import SwiftData
@Model
class dataItem:Identifiable{
    var id:String
    var name:String
    init(name: String) {
        self.id=UUID().uuidString
        self.name=name
    }
}
