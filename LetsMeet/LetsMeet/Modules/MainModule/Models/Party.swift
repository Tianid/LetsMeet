//
//  Party.swift
//  LetsMeet
//
//  Created by Tianid on 14.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import Foundation

struct Party {
    let name: String
    let joiningKey: String
    let creationDate: Date
    let modifiedDate: Date
    let users: [User]
    let meetings: [Meet]
    
}
