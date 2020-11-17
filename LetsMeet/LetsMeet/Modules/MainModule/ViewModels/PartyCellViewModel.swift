//
//  PartyCellViewModel.swift
//  LetsMeet
//
//  Created by Tianid on 16.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import Foundation

class PartyCellViewModel {
    var newMeet: Box<IndexPath?> = Box(nil)
    var changedMeet: Box<IndexPath?> = Box(nil)
    weak var delegate: IMainViewModelDelegate?
    
    private var partyIndex: IndexPath
    private var party: Party
    
    init(party: Party, indexPath: IndexPath) {
        self.party = party
        self.partyIndex = indexPath
    }
    
}

extension PartyCellViewModel: IPartyCellViewModel {
    
    func numberOfItems() -> Int {
        return party.meetings.count
    }
    
    func cellViewModel(index: IndexPath) -> IMeetCellViewModel {
        let count = party.meetings.count
        let newIndex = IndexPath(row: count - 1 - index.row, section: 1)
        let meet = party.meetings[newIndex.row]
        let viewModel = MeetCellViewModel(meet: meet, index: newIndex)
        viewModel.delegate = self
        return viewModel
    }
    
    func partyControllCellViewModel() -> IPartyControllCellViewModel {
        let viewModel = PartyControllCellViewModel(party: party, index: self.partyIndex)
        viewModel.delegate = self
        viewModel.newMeet.bind { [unowned self] in
            guard let meet = $0 else { return }
            self.party.appendMeet(meet: meet)
            self.newMeet.value = IndexPath(row: 0, section: 1)
            self.delegate?.partyChanged(party: self.party, index: self.partyIndex)
        }
        return viewModel
    }
}

extension PartyCellViewModel: IPartyCellViewModelDelegate {
    func meetChanged(meet: Meet, index: IndexPath) {
        self.party.meetings[index.row] = meet
        self.changedMeet.value = index
        self.delegate?.partyChanged(party: self.party, index: self.partyIndex)
    }
    
    func partyNameChanged(party: Party, index: IndexPath) {
        self.party = party
        self.delegate?.partyChanged(party: party, index: index)
    }

}
