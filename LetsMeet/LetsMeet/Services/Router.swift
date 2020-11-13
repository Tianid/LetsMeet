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
    var navBar: UINavigationController! { get }
    func initiateMainScreen() -> UINavigationController
}

class Router: IRouter {
    private(set) var navBar: UINavigationController!
    
    var assmeblyBuilder: IAssembleBuilder
    
    init(assembler: IAssembleBuilder) {
        self.assmeblyBuilder = assembler
    }
    
    func initiateMainScreen() -> UINavigationController {
        let vc = assmeblyBuilder.createMainModule(router: self)
        navBar = UINavigationController(rootViewController: vc)
        return navBar
    }
}
