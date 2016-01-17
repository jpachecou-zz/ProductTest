//
//  ESConstants.swift
//  Easy Share
//
//  Created by Jonathan Pacheco on 1/11/16.
//  Copyright © 2016 jpachecou. All rights reserved.
//

import UIKit

private class ConstantsDefinitions: NetworkConstants {
    //MARK: Network Constants
    let defaultTimeOutKey   = "DefaultTimeOut"
    let urlsKey             = "URLs"

    let instagramURL        = "InstagramURL"
}

class Constants: ConstantsTypes {

    private init() {}
    //MARK: - Constants Definitions

    static let networkConstants: NetworkConstants = ConstantsDefinitions()
}
