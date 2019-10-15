//
//  File.swift
//  TraningSwiftUI
//
//  Created by nhocbangchu95 on 10/15/19.
//  Copyright © 2019 nhocbangchu95. All rights reserved.
//

import Foundation

class FruitModel: Identifiable {
    var id: String
    var name: String
    var image: String
    var description: String

    init(name: String, descripton: String) {
        self.id = name
        self.name = name
        self.image = name
        self.description = descripton
    }
}
