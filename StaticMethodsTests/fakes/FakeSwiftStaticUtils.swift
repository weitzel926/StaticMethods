//
//  FakeSwiftStaticUtils.swift
//  StaticMethods
//
//  Created by Wade Weitzel on 5/28/20.
//  Copyright © 2020 Wade Weitzel. All rights reserved.
//

import Foundation
@testable import StaticMethods

class FakeSwiftStaticUtils : SwiftStaticUtilsProtocol {
    static func getUSMessage() -> String {
        return "Testing US"
    }
    
    static func getUKMessage() -> String {
        return "Testing UK"
    }
}
