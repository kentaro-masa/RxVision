//
//  RxVNDetectTextRectanglesRequest.swift
//  RxVision
//
//  Created by Maxim Volgin on 27/09/2018.
//  Copyright © 2018 Maxim Volgin. All rights reserved.
//

import Vision
import RxSwift

public final class RxVNDetectTextRectanglesRequest<T>: RxVNRequest<T> {
    
    public init(reportCharacterBoxes: Bool) {
        let handler = RxVNRequestCompletionHandler()
        let request: VNDetectTextRectanglesRequest = VNDetectTextRectanglesRequest(completionHandler: handler.requestCompletionHandler)
        request.reportCharacterBoxes = reportCharacterBoxes
        super.init(request: request, handler: handler)
    }
    
}
