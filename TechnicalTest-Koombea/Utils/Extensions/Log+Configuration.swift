//
//  Log+Configuration.swift
//  Easy Share
//
//  Created by Jonathan Pacheco on 1/16/16.
//  Copyright © 2016 jpachecou. All rights reserved.
//

import Foundation
import Log

extension Logger {
    
    public func customConfiguration() {
        self.formatter = .Detailed
        self.theme = .TomorrowNight
    }
}

private extension Formatters {
    static let Detailed = Formatter("%@: [%@ - %@.%@:%@]: %@", [
        .Level,
        .Date("HH:mm:ss.SSS"),
        .File(fullPath: false, fileExtension: false),
        .Function,
        .Line,
        .Message
        ])
}

private extension Themes {
    static let TomorrowNight = Theme(
        trace:   "#C5C8C6",
        debug:   "#44AA44",
        info:    "#88AAFF",
        warning: "#D99600",
        error:   "#FF0000"
    )
}