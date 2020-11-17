//
//  MeetCellViewModel.swift
//  LetsMeet
//
//  Created by Tianid on 16.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import Foundation

class MeetCellViewModel {
    private var meetIndex: IndexPath
    private var meet: Meet
    var meetDate: Box<Date?> = Box(nil)
    var meetName: Box<String?> = Box(nil)
    var meetAddress: Box<String?> = Box(nil)
    
    weak var delegate: IPartyCellViewModelDelegate?
    
    init(meet: Meet, index: IndexPath) {
        self.meet = meet
        self.meetIndex = index
    }
    
    private func setData(date: Date, address: String, name: String) {
        meetDate.value = date
        meetAddress.value = address
        meetName.value = name
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
    
    func saveMeetChanges() {
        setData(date: Date(), address: "NEW ADDRESS", name: "NEW NAME")
        guard let date = meetDate.value else { return }
        guard let address = meetAddress.value else { return }
        guard let name = meetName.value else { return }
        
        let meet = Meet(name: name,
                        date: date,
                        description: "CHANGED",
                        address: address,
                        long: nil,
                        lat: nil,
                        creationDate: date,
                        modifiedDate: date)
        
        
        delegate?.meetChanged(meet: meet, index: meetIndex)
        
    }
    
}
