//
//  SwiftPromise.m
//  PromiseSwift
//
//  Created by Petro Korienev on 3/7/16.
//  Copyright © 2016 Techery. All rights reserved.
//

#import "SwiftPromise.h"

@implementation SwiftPromise

- (SwiftPromise *(^)(id(^)(id result), id(^)(NSError *error)))then {
    return (SwiftPromise *(^)(id(^)(id result), id(^)(NSError *error)))[super then];
}

@end
