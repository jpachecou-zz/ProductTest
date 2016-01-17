//
//  RequestManager.swift
//  TechnicalTest-Koombea
//
//  Created by Jonathan Pacheco on 1/17/16.
//  Copyright © 2016 Jonathan Pacheco. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

typealias RequestManagerResponse = (RequestResponse) -> Void
private let kRequestBackgroundId = "com.jpachecou.ios.Easy-Share.request"

extension ModelRequestVerb {

    private var verbEquivalent: Alamofire.Method {
        get {
            switch self {
            case .OPTIONS:  return Method.OPTIONS
            case .GET:      return Method.GET
            case .HEAD:     return Method.HEAD
            case .POST:     return Method.POST
            case .PUT:      return Method.PUT
            case .PATCH:    return Method.PATCH
            case .DELETE:   return Method.DELETE
            case .TRACE:    return Method.TRACE
            case .CONNECT:  return Method.CONNECT
            }
        }
    }

}

enum RequestOperationError: ErrorType {
    case NotInitializeManager
    case InvalidURL
}

struct RequestResponse {
    var value: JSON?
    var error: NSError?
}

class RequestManager {

    private static var defaultManager: Alamofire.Manager?

    static func initializateManager() {
        let configuration = NSURLSessionConfiguration
            .backgroundSessionConfigurationWithIdentifier(kRequestBackgroundId)
        configuration.URLCache = NSURLCache()
        self.defaultManager = Alamofire.Manager(configuration: configuration)
    }

    class func startOperationWithModel(model: ModelRequest) {
        self.simpleRequest(model)
    }
    
    class private func simpleRequest(model: ModelRequest) {
        guard let url = NSURL(string: model.url ?? "") else {
            return
        }
        let defaultTimeOut: NSTimeInterval = 60.0
        let request = NSMutableURLRequest(URL: url,
            cachePolicy: .ReloadRevalidatingCacheData,
            timeoutInterval: defaultTimeOut)
        if let params = model.parameters {
            request.HTTPBody = NSKeyedArchiver.archivedDataWithRootObject(params)
        }
        Alamofire.request(model.verb.verbEquivalent, url, parameters: model.parameters)
            .responseData { response in
            if let error = response.result.error {
                model.completion?(RequestResponse(value: nil, error: error))
            } else {
                guard let data = response.result.value else { return }
                model.completion?(RequestResponse(value: JSON(data: data), error: nil))
            }
        }
    }

}
