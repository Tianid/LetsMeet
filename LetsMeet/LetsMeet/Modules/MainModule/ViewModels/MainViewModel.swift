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
    
    init(router: IRouter) {
        self.router = router
    }
    
}

extension MainViewModel: IMainViewModel {
    
}
