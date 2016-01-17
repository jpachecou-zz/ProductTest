//
//  API.swift
//  TechnicalTest-Koombea
//
//  Created by Jonathan Pacheco on 1/17/16.
//  Copyright © 2016 Jonathan Pacheco. All rights reserved.
//

import UIKit

protocol APIInterface {
    static func user() -> APIUserInterface
}

class API: APIInterface {

    static func user() -> APIUserInterface {
        return APIUser()
    }

}
