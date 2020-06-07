//
//  SwiftStaticUtilsProtocol.swift
//  StaticMethods
//
//  Created by Wade Weitzel on 5/28/20.
//  Copyright © 2020 Wade Weitzel. All rights reserved..
//

import Foundation

protocol SwiftStaticUtilsProtocol {
    static func getUSMessage() -> String
    static func getUKMessage() -> String
}

extension SwiftStaticUtils : SwiftStaticUtilsProtocol {}
