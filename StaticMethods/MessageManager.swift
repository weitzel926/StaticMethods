//
//  MessageManager.swift
//  StaticMethods
//
//  Created by Wade Weitzel on 5/28/20.
//  Copyright © 2020 Wade Weitzel. All rights reserved.

import Foundation

class MessageManager {
    var swiftStaticUtils:SwiftStaticUtilsProtocol.Type! = SwiftStaticUtils.self
    var objectiveCStaticUtils:ObjectiveCStaticUtilsProtocol.Type! = ObjectiveCStaticUtils.self
    
    func getMessage() -> String {
        if objectiveCStaticUtils.getAppVersionType() == "US" {
            return swiftStaticUtils.getUSMessage()
        } else if objectiveCStaticUtils.getAppVersionType() == "UK" {
            return swiftStaticUtils.getUKMessage()
        }
        
        return "Welcome Mystery User"
    }
}
