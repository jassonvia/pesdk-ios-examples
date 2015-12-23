//
//  LomoFilter.swift
//  imglyKit
//
//  Created by Carsten Przyluczky on 11/03/15.
//  Copyright (c) 2015 9elements GmbH. All rights reserved.
//

import Foundation

@objc(IMGLYLomoFilter) public class LomoFilter: ResponseFilter {
    required public init() {
        super.init(responseName: "Lomo")
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

extension LomoFilter: EffectFilter {
    public var displayName: String {
        return "Lomo"
    }

    public var filterType: FilterType {
        return .Lomo
    }
}
