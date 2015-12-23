//
//  NoneFilter.swift
//  imglyKit
//
//  Created by Carsten Przyluczky on 05/02/15.
//  Copyright (c) 2015 9elements GmbH. All rights reserved.
//

import Foundation
#if os(iOS)
import CoreImage
#elseif os(OSX)
import QuartzCore
#endif

/**
*  A filter that does nothing. It is used within the fixed-filterstack.
*/
@objc(IMGLYNoneFilter) public class NoneFilter: ResponseFilter {
    required public init() {
        super.init(responseName: "None")
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    /// Returns a CIImage object that encapsulates the operations configured in the filter. (read-only)
    public override var outputImage: CIImage? {
        guard let inputImage = inputImage else {
            return nil
        }

        return inputImage
    }
}

extension NoneFilter: EffectFilter {
    public var displayName: String {
        return "None"
    }

    public var filterType: FilterType {
        return .None
    }
}
