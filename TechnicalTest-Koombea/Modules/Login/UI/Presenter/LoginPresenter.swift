//
//  LoginPresenter.swift
//  TechnicalTest-Koombea
//
//  Created by Jonathan Pacheco on 17/01/16.
//  Copyright © Jonathan Pacheco. All rights reserved.
//  VIPER Module Generator: https://github.com/jpachecou/VIPER-Module-Generator

import Foundation

protocol LoginPresenterInterface {
    
}

protocol LoginInteractorOutput {
    
}

class LoginPresenter: LoginPresenterInterface, LoginInteractorOutput {
    
    var interactor:     LoginInteractorInput?
    var wireframe:      LoginWireframe?
    var userInterface:  LoginUserInterface?
    
}