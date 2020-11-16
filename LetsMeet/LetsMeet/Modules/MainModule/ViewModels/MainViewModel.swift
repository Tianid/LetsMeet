//
//  MainViewModel.swift
//  LetsMeet
//
//  Created by Tianid on 13.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import Foundation

class MainViewModel {
    private var router: IRouter
    private var partys = testPartys
    
    init(router: IRouter) {
        self.router = router
    }
    
}

extension MainViewModel: IMainViewModel {
    func cellViewModel(index: IndexPath) -> IPartyCellViewModel {
        let party = partys[index.row]
        let viewModel = PartyCellViewModel(party: party)
        return viewModel
    }
    
    func numberOfItems() -> Int {
        return partys.count
    }
}
