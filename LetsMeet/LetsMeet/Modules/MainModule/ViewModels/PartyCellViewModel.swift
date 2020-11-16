//
//  PartyCellViewModel.swift
//  LetsMeet
//
//  Created by Tianid on 16.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import Foundation

class PartyCellViewModel {
    
    private var party: Party
    
    init(party: Party) {
        self.party = party
    }
    
}

extension PartyCellViewModel: IPartyCellViewModel {
    
    func numberOfItems() -> Int {
        return party.meetings.count
    }
    
    func cellViewModel(index: IndexPath) -> IMeetCellViewModel {
        let meet = party.meetings[index.row]
        let viewModel = MeetCellViewModel(meet: meet)
        return viewModel
    }
    
    func partyControllCellViewModel() -> IPartyControllCellViewModel {
        let viewModel = PartyControllCellViewModel(party: party)
        return viewModel
    }
    
    
}
