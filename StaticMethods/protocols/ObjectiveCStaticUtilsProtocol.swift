//
//  ObjectiveCStaticUtilsProtocol.swift
//  StaticMethods
//
//  Created by Wade Weitzel on 5/28/20.
//  Copyright © 2020 Wade Weitzel. All rights reserved.
//

import Foundation

protocol ObjectiveCStaticUtilsProtocol {
    static func getAppVersionType() -> String
}

extension ObjectiveCStaticUtils : ObjectiveCStaticUtilsProtocol {}
