//
//  Router.swift
//  LetsMeet
//
//  Created by Tianid on 13.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import UIKit
import Foundation

protocol IRouter {
    var assemblyBuilder: IAssembleBuilder { get set }
    func initiateTabBar()
}

class Router: IRouter {
    var tabBarController: ITabBarVC
    private var mainNavigationController: UINavigationController!
    private var profileNavigationController: UINavigationController!
    
    var assemblyBuilder: IAssembleBuilder
    
    init(tabBar: ITabBarVC, assembler: IAssembleBuilder) {
        self.assemblyBuilder = assembler
        self.tabBarController = tabBar
    }
    
    func initiateTabBar() {
        
        tabBarController.configureTabBar(router: self)
        guard let controllers = tabBarController.viewControllers as? [UINavigationController] else { return }
        
        for item in controllers {
            if item.viewControllers[0] is MainVC {
                self.mainNavigationController = item
                continue
            }
            
            if item.viewControllers[0] is ProfileVC {
                self.profileNavigationController = item
                continue
            }
        }
    }
}
