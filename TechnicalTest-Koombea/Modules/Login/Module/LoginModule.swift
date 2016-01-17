//
//  LoginModule.swift
//  TechnicalTest-Koombea
//
//  Created by Jonathan Pacheco on 17/01/16.
//  Copyright © Jonathan Pacheco. All rights reserved.
//  VIPER Module Generator: https://github.com/jpachecou/VIPER-Module-Generator

import UIKit

class LoginModule {
    
    var interactor: LoginInteractor?
    var presenter:  LoginPresenter?
    var wireframe:  LoginWireframe?
    
    class func loadModule() -> LoginModule {
        
        // Initalize module instance
        let module = LoginModule()
        
        // Generate interactor, presenter and wireframe
        module.interactor               = LoginInteractor()
        module.presenter                = LoginPresenter()
        module.wireframe                = LoginWireframe()
        
        // Connect module
        module.interactor?.output       = module.presenter
        module.presenter?.interactor    = module.interactor
        module.presenter?.wireframe     = module.wireframe
        module.wireframe?.presenter     = module.presenter
    
        return module
    }
    
}
