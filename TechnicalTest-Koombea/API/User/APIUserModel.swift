//
//  APIUserModel.swift
//  TechnicalTest-Koombea
//
//  Created by Jonathan Pacheco on 1/17/16.
//  Copyright © 2016 Jonathan Pacheco. All rights reserved.
//

import UIKit

enum APIUserModelType: String {
    case Image = "image"
    case Video = "video"
}

class APIUserModel: APIUserMapping {

    var shortcode: String?
    var thumbnailURL: String?
    var videoUrl: String?
    var imageUrl: String?
    var type: String?
    var isVideo: Bool {
        return self.type == APIUserModelType.Video.rawValue
    }

}
