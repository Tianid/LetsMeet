//
//  IMeetCellViewModel.swift
//  LetsMeet
//
//  Created by Tianid on 16.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import Foundation

protocol IMeetCellViewModel {
    
    var date: Date { get }
    var name: String { get }
    var address: String { get }
    
    var meetDate: Box<Date?> { get }
    var meetName: Box<String?> { get }
    var meetAddress: Box<String?> { get }
}
