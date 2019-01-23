//
//  Category.swift
//  Todoey
//
//  Created by Matthew Tripodi on 1/17/19.
//  Copyright © 2019 Matthew Tripodi. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    let items = List<Item>()
}
