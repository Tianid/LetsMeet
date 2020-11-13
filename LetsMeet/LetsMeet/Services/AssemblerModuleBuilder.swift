//
//  AssemblerModuleBuilder.swift
//  LetsMeet
//
//  Created by Tianid on 13.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//
import UIKit
import Foundation

protocol IAssembleBuilder {
    func createMainModule(router: IRouter) -> UIViewController
}

class AssemberlModuleBuilder: IAssembleBuilder {
    func createMainModule(router: IRouter) -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "MainVC") as? MainVC else {
            fatalError("Failed to load EditUserViewController from storyboard.")
        }
        
        let viewModel = MainViewModel(router: router)
        vc.viewModel = viewModel
        return vc
    }
    
}
