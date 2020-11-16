//
//  MeetCellViewModel.swift
//  LetsMeet
//
//  Created by Tianid on 16.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import Foundation

class MeetCellViewModel {
    private var meet: Meet
    
    var meetDate: Box<Date?> = Box(nil)
    var meetName: Box<String?> = Box(nil)
    var meetAddress: Box<String?> = Box(nil)
    
    
    init(meet: Meet) {
        self.meet = meet
    }
}

extension MeetCellViewModel: IMeetCellViewModel {
    var date: Date {
        return meet.date
    }
    
    var name: String {
        return meet.name
    }
    
    var address: String {
        return meet.address ?? ""
    }
}
