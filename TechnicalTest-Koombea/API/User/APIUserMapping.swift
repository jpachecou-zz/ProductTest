//
//  APIUserMapping.swift
//  TechnicalTest-Koombea
//
//  Created by Jonathan Pacheco on 1/17/16.
//  Copyright © 2016 Jonathan Pacheco. All rights reserved.
//

import Foundation
import SwiftyJSON

protocol APIUserMapping {
    
    var thumbnailURL: String? { get set }
    var videoUrl: String? { get set }
    var imageUrl: String? { get set }
    var type: String? { get set }
    
}

extension APIUserMapping {
    
    mutating func mappingUserFromJSON(json: JSON?) {
        guard let json = json else { return }
        self.type = json["data", "type"].string
        self.imageUrl = json["data", "images", "standard_resolution", "url"].string
        self.thumbnailURL = json["data", "images", "thumbnail", "url"].string
        self.videoUrl = json["data", "videos", "standard_resolution", "url"].string
    }
    
}