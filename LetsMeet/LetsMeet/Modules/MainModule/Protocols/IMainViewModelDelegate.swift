//
//  IMainViewModelDelegate.swift
//  LetsMeet
//
//  Created by Tianid on 17.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import Foundation

protocol IMainViewModelDelegate: class {
    func partyChanged(party: Party, index: IndexPath)
}
