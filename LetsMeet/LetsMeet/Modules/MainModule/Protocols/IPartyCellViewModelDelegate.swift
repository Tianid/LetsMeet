//
//  IPartyCellViewModelDelegate.swift
//  LetsMeet
//
//  Created by Tianid on 17.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import Foundation

protocol IPartyCellViewModelDelegate: class {
    func meetChanged(meet: Meet, index: IndexPath)
    func partyNameChanged(party: Party, index: IndexPath)
}
