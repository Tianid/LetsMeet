//
//  ProfileViewModel.swift
//  LetsMeet
//
//  Created by Tianid on 15.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import Foundation

class ProfileViewModel {
    
    private var router: IRouter
    
    init(router: IRouter) {
        self.router = router
    }
}

extension ProfileViewModel: IProfileViewModel {
    
}
