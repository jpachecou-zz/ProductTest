//
//  ModelRequest.swift
//  TechnicalTest-Koombea
//
//  Created by Jonathan Pacheco on 1/17/16.
//  Copyright © 2016 Jonathan Pacheco. All rights reserved.
//

import UIKit

typealias ModelRequestDictionary = [String : AnyObject]

enum ModelRequestVerb {
    case OPTIONS, GET, HEAD, POST, PUT, PATCH, DELETE, TRACE, CONNECT
}

enum ModelRequestAuthenticationType {
    case None
}

class ModelRequest {

    var verb: ModelRequestVerb = .GET
    var url: String?
    var parameters: ModelRequestDictionary?
    var authType: ModelRequestAuthenticationType?
    var timeOut: NSTimeInterval?
    var completion: RequestManagerResponse?

}
