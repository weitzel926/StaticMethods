//
//  FakeObjectiveCStaticUtils.swift
//  StaticMethodsTests
//
//  Created by Wade Weitzel on 5/28/20.
//  Copyright © 2020 Wade Weitzel. All rights reserved.
//

import Foundation
@testable import StaticMethods

class FakeObjectiveCStaticUtils : ObjectiveCStaticUtilsProtocol {
    static var stubbedAppVersion:String?
    
    static func getAppVersionType() -> String {
        return stubbedAppVersion!
    }
}
