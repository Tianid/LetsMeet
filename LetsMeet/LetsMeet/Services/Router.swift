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
    var navigationController: UINavigationController! { get }
    func initiateMainScreen() -> UINavigationController
}

class Router: IRouter {
    private(set) var navigationController: UINavigationController!
    
    var assmeblyBuilder: IAssembleBuilder
    
    init(assembler: IAssembleBuilder) {
        self.assmeblyBuilder = assembler
    }
    
    func initiateMainScreen() -> UINavigationController {
        let vc = assmeblyBuilder.createMainModule(router: self)
        navigationController = UINavigationController(rootViewController: vc)
        return navigationController
    }
}
