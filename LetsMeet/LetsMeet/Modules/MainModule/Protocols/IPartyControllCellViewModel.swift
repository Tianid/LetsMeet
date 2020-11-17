//
//  IPartyControllCellViewModel.swift
//  LetsMeet
//
//  Created by Tianid on 16.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import Foundation

protocol IPartyControllCellViewModel {
    var newMeet: Box<Meet?> { get }
    var partyNameLabel: Box<String?> { get }
    var partyName: String { get }
    func addNewMeet()
}
