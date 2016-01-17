//
//  ConstantInterfaces.swift
//  Easy Share
//
//  Created by Jonathan Pacheco on 1/11/16.
//  Copyright © 2016 jpachecou. All rights reserved.
//

import Foundation

protocol NetworkConstants {
    var defaultTimeOutKey: String { get }
    var urlsKey: String { get }
    var instagramURL: String { get }
}

//MARK - Types

protocol ConstantsTypes {
    static var networkConstants: NetworkConstants { get }
}
