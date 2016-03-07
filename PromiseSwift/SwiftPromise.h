//
//  SwiftPromise.h
//  PromiseSwift
//
//  Created by Petro Korienev on 3/7/16.
//  Copyright © 2016 Techery. All rights reserved.
//

#import "RXPromise.h"

@interface SwiftPromise : RXPromise

- (SwiftPromise *(^)(id(^)(id result), id(^)(NSError *error)))then;
@property (nonatomic, strong, readonly) SwiftPromise *(^then)(id(^)(id result), id(^)(NSError *error));

@end
