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
    var token: String?
    
    internal init(uuid: String = UUID().uuidString, token: String?) {
        self.uuid = uuid
        self.token = token
    }
    
}
