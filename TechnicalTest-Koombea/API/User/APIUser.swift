//
//  APIUser.swift
//  TechnicalTest-Koombea
//
//  Created by Jonathan Pacheco on 1/17/16.
//  Copyright © 2016 Jonathan Pacheco. All rights reserved.
//

import UIKit

typealias APIUserCallback = (APIUserModel?, NSError?) -> Void

private let instgramAccessToken = "238999748.de90d39.f54728cdbb76423683052d5b959d442f"

protocol APIUserInterface {
    func requestForUserInfo(shortcode: String, callback: APIUserCallback)
}

class APIUser: APIUserInterface {

    func requestForUserInfo(shortcode: String, callback: APIUserCallback) {
        let model = ModelRequest()
        model.verb          = .GET
        model.parameters    = ["access_token": instgramAccessToken]
        model.url           = self.getUserURL(shortcode)
        model.authType      = .None
        model.completion    = { response in
            self.makeLogicForUserResponse(response, callback: callback)
        }
        RequestManager.startOperationWithModel(model)
    }

    private func getUserURL(shortcode: String) -> String? {
//        let urlsKey = ESConstants.networkConstants.urlsKey
//        let UserKey = ESConstants.networkConstants.UserURL
//        if let url = ESConfiguration.sharedInstance[urlsKey, UserKey] as? String {
//            return url.stringByReplacingOccurrencesOfString("{{shortcode}}", withString: shortcode)
//        }
        return nil
    }

    private func makeLogicForUserResponse(response: RequestResponse,
                                               callback: APIUserCallback) {
        if let error = response.error {
            callback(nil, error)
        } else {
            var UserModel = APIUserModel()
            UserModel.mappingUserFromJSON(response.value)
            callback(UserModel, nil)
        }
    }

}
