//
//  Duration.swift
//  Courses-SwiftUI
//
//  Created by Kristian Bredin on 2022-02-14.
//

import Foundation

struct Duration {
    var hours: Int
    var minutes: Int
    var seconds: Int
    
    init(hours: Int, minutes: Int, seconds: Int) {
        self.hours = hours
        self.minutes = minutes
        self.seconds = seconds
    }
    
    init(hours: Int, minutes: Int) {
        self.init(hours: hours, minutes: minutes, seconds: 0)
    }
    
    init(hours: Int) {
        self.init(hours: hours, minutes: 0)
    }
    
    init(minutes: Int) {
        self.init(hours: 0, minutes: minutes)
    }
    
    // À la Java...
    func toString() -> String {
        var result = ""
        if hours > 0 {result = "\(hours) h"}
        if minutes > 0 {result = "\(result).\(minutes)"}
        if seconds > 0 {result = "\(result).\(seconds)"}
        
        return result
    }
    
}
