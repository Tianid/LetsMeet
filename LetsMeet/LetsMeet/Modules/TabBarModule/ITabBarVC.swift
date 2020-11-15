//
//  ITabBarVC.swift
//  LetsMeet
//
//  Created by Tianid on 15.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import UIKit
import Foundation

protocol ITabBarVC: UITabBarController {
    func configureTabBar(router: IRouter)
}
