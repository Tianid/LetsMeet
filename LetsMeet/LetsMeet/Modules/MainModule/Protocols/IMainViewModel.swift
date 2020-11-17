//
//  IMainViewModel.swift
//  LetsMeet
//
//  Created by Tianid on 13.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import Foundation

protocol IMainViewModel {
    var partysB: Box<[Party]?> { get }
    func numberOfItems() -> Int
    func cellViewModel(index: IndexPath) -> IPartyCellViewModel
}
