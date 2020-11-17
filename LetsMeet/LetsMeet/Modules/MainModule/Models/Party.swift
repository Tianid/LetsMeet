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
    var meetings: [Meet]
    
    mutating func appendMeet(meet: Meet) {
        self.meetings.append(meet)
    }
    
    func update(name: String? = nil, joiningKey: String? = nil, creationDate: Date? = nil, modifiedDate: Date? = nil, users: [User]? = nil, meetings: [Meet]? = nil) -> Party {
        let _name: String!
        let _joiningKey: String!
        let _creationDate: Date!
        let _modifiedDate: Date!
        let _users: [User]!
        let _meetings: [Meet]!
        
        _name = name == nil ? self.name : name
        _joiningKey = joiningKey == nil ? self.joiningKey : joiningKey
        _creationDate = creationDate == nil ? self.creationDate : creationDate
        _modifiedDate = modifiedDate == nil ? self.modifiedDate : modifiedDate
        _users = users == nil ? self.users : users
        _meetings = meetings == nil ? self.meetings : meetings
        
        let party = Party(name: _name,
                          joiningKey: _joiningKey,
                          creationDate: _creationDate,
                          modifiedDate: _modifiedDate,
                          users: _users,
                          meetings: _meetings)
        
        return party
        
    }
    
}
