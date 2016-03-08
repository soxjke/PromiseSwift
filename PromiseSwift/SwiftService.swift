//
//  SwiftService.swift
//  PromiseSwift
//
//  Created by Petro Korienev on 3/8/16.
//  Copyright © 2016 Techery. All rights reserved.
//

import Foundation

public class SwiftService<T>: NSObject {
    public func fireSomeRequest() -> RXPromise {
        let promise : RXPromise = RXPromise()
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(UInt64(5) * NSEC_PER_SEC)),
            dispatch_get_main_queue(), {() -> Void in
                promise.fulfillWithValue("Success")
        })
        promise.then(nil, {(error : NSError!) -> AnyObject! in
            if error.domain == "RXPromise" {
                NSLog("Cancelled")
            }
            return NSObject()
        })
        return promise;
    }
}
