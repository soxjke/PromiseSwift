//
//  SimpleService.m
//  PromiseSwift
//
//  Created by Petro Korienev on 3/7/16.
//  Copyright © 2016 Techery. All rights reserved.
//

#import "SimpleService.h"

@implementation SimpleService

- (RXPromise *)fireSomeRequest {
    RXPromise *promise = [RXPromise new];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^() {
        [promise fulfillWithValue:@"Success"];
    });
    promise.then(nil, ^id(NSError *error) {
        if ([error.domain isEqualToString:@"RXPromise"]) {
            NSLog(@"Promise cancelled");
        }
        return nil;
    });
    return promise;
}

@end
