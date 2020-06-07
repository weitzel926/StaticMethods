//
//  SwiftStaticUtils.swift
//  StaticMethods
//
//  Created by Wade Weitzel on 5/28/20.
//  Copyright © 2020 Wade Weitzel. All rights reserved.
//

import Foundation

class SwiftStaticUtils {
    static func getUSMessage() -> String {
        guard let hour = SwiftStaticUtils.getHour() else {
            return "Welcome American"
        }
        
        if hour <= 12 {
            return "Welcome American AM"
        } else {
            return "Welcome American PM"
        }
        
    }
    
    static func getUKMessage() -> String {
        guard let hour = SwiftStaticUtils.getHour() else {
            return "Welcome American"
        }
        
        if hour <= 12 {
            return "Welcome Briton AM"
        } else {
            return "Welcome Briton PM"
        }
    }
    
    static func getHour() -> Int? {
        let date = Date()
        let dateComponents = Calendar.current.dateComponents([.hour], from: date)
        return dateComponents.hour
    }
}
