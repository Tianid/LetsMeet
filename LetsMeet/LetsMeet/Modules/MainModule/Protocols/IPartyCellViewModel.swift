//
//  IPartyCellViewModel.swift
//  LetsMeet
//
//  Created by Tianid on 16.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import Foundation

protocol IPartyCellViewModel: class {
    var newMeet: Box<IndexPath?> { get }
    var changedMeet: Box<IndexPath?> { get }
    func numberOfItems() -> Int
    func cellViewModel(index: IndexPath) -> IMeetCellViewModel
    func partyControllCellViewModel() -> IPartyControllCellViewModel
}
