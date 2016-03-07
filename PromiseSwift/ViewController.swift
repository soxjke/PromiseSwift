//
//  ViewController.swift
//  PromiseSwift
//
//  Created by Petro Korienev on 3/7/16.
//  Copyright © 2016 Techery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var service : SimpleService = SimpleService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(UInt64(2) * NSEC_PER_SEC)),
                        dispatch_get_main_queue(),
                        {[weak self] () -> Void in
            self?.fireRequest()
            self?.fireRequestAndCancel()
        })
    }
    
    private func fireRequest() {
        let promise : SwiftPromise = self.service.fireSomeRequest()
        promise.then({(obj: AnyObject!) -> AnyObject! in
            NSLog("Succeeded with value: \(obj)")
            return NSObject();
            },
            {(err: ErrorType!) -> AnyObject! in
            NSLog("Failed with reason: \(err)")
            return NSObject();
        })
    }
    
    private func fireRequestAndCancel() {
        let promise : SwiftPromise = self.service.fireSomeRequest()
        promise.then({(obj: AnyObject!) -> AnyObject! in
            NSLog("Succeeded with value: \(obj)")
            return NSObject();
            },
            {(err: ErrorType!) -> AnyObject! in
                NSLog("Failed with reason: \(err)")
                return NSObject();
        })
        
        dispatch_async(dispatch_get_main_queue(), { () -> Void in
            promise.cancel()
        })
    }
}

