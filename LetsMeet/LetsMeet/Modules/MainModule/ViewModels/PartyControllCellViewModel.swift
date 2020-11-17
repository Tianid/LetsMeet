//
//  PartyControllCellViewModel.swift
//  LetsMeet
//
//  Created by Tianid on 16.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import Foundation

class PartyControllCellViewModel {
    private var partyIndex: IndexPath
    private var party: Party
    
    var newMeet: Box<Meet?> = Box(nil)
    var partyNameLabel: Box<String?> = Box(nil)
    
    var partyName: String {
        return party.name
    }
    
    weak var delegate: IPartyCellViewModelDelegate?

    
    
    
    init(party: Party, index: IndexPath) {
        self.party = party
        self.partyIndex = index
    }
    
    private func partyRename() {
        partyNameLabel.value = "NEW PARTY NAME"
        let newParty = party.update(name: "NEW PARTY NAME")
        delegate?.partyNameChanged(party: newParty, index: self.partyIndex)
    }
    
}

extension PartyControllCellViewModel: IPartyControllCellViewModel {
    
    func addNewMeet() {
//                partyRename()
        let meet = Meet(name: "Foo",
                        date: Date(),
                        description: "TEST",
                        address: "TEST",
                        long: nil,
                        lat: nil,
                        creationDate: Date(),
                        modifiedDate: Date())
        newMeet.value = meet
    }
    
    
}
