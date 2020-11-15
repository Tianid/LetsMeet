//
//  TabBarVC.swift
//  LetsMeet
//
//  Created by Tianid on 15.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import UIKit

class TabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension TabBarVC: ITabBarVC {
    func configureTabBar(router: IRouter) {
        let assembler = router.assemblyBuilder
        
        let mainModule = assembler.createMainModule(router: router)
        let profileModule = assembler.createProfileModule(router: router)
        
        var mainItem: UITabBarItem!
        var profileItem: UITabBarItem!
        
        if #available(iOS 13.0, *) {
            mainItem = UITabBarItem(title: "Main", image: UIImage(systemName: "house.fill"), selectedImage: nil)
            profileItem =  UITabBarItem(title: "Profile", image: UIImage.init(systemName: "house.fill"), selectedImage: nil)
        } else {
            mainItem = UITabBarItem(title: "Main", image: UIImage(named: ""), selectedImage: nil)
            profileItem = UITabBarItem(title: "Profile", image: nil, selectedImage: nil)
        }
        
        
        mainModule.tabBarItem = mainItem
        profileModule.tabBarItem = profileItem
        
        let mainNavigationController = UINavigationController(rootViewController: mainModule)
        let profilenavigationController = UINavigationController(rootViewController: profileModule)
        
        let controllers = [mainNavigationController, profilenavigationController]
        
        self.viewControllers = controllers
    }
    
    
}
