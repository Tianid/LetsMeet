//
//  User.swift
//  LetsMeet
//
//  Created by Tianid on 14.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import Foundation

struct User {
    let uuid: String
    let name: String
    
    internal init(uuid: String = UUID().uuidString, name: String) {
        self.uuid = uuid
        self.name = name
    }
    
}
