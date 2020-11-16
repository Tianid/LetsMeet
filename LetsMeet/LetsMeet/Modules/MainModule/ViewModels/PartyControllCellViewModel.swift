//
//  PartyControllCellViewModel.swift
//  LetsMeet
//
//  Created by Tianid on 16.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import Foundation

class PartyControllCellViewModel {
    private var party: Party
    
    
    
    init(party: Party) {
        self.party = party
    }
    
}

extension PartyControllCellViewModel: IPartyControllCellViewModel {
    var partyName: String {
        return party.name
    }
    
    
}
