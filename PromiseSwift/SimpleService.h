//
//  SimpleService.h
//  PromiseSwift
//
//  Created by Petro Korienev on 3/7/16.
//  Copyright © 2016 Techery. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SwiftPromise.h"

@interface SimpleService : NSObject

- (SwiftPromise *)fireSomeRequest;

@end
