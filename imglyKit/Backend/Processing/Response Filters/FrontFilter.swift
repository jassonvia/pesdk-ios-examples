//
//  FrontFilter.swift
//  imglyKit
//
//  Created by Carsten Przyluczky on 11/03/15.
//  Copyright (c) 2015 9elements GmbH. All rights reserved.
//

import Foundation

@objc(IMGLYFrontFilter) public class FrontFilter: ResponseFilter {
    required public init() {
        super.init(responseName: "Front")
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

extension FrontFilter: EffectFilter {
    public var displayName: String {
        return "Front"
    }

    public var filterType: FilterType {
        return .Front
    }
}
