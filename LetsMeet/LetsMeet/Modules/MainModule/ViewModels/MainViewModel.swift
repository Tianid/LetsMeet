//
//  MainViewModel.swift
//  LetsMeet
//
//  Created by Tianid on 13.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import Foundation

class MainViewModel {
    var partysB: Box<[Party]?> = Box(testPartys)
    private var router: IRouter
//    private var partys = testPartys
    
    init(router: IRouter) {
        self.router = router
    }
    
}

extension MainViewModel: IMainViewModel {
    func cellViewModel(index: IndexPath) -> IPartyCellViewModel {
        let party = partysB.value![index.row] //WARNING
        let viewModel = PartyCellViewModel(party: party, indexPath: index)
        viewModel.delegate = self
        
        return viewModel
    }
    
    func numberOfItems() -> Int {
        return partysB.value?.count ?? 0
    }
}


extension MainViewModel: IMainViewModelDelegate {
    func partyChanged(party: Party, index: IndexPath) {
        partysB.value?[index.row] = party
    }
    
    
}
