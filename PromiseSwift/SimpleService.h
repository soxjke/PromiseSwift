//
//  SimpleService.h
//  PromiseSwift
//
//  Created by Petro Korienev on 3/7/16.
//  Copyright © 2016 Techery. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RXPromise.h"

@interface SimpleService : NSObject

- (RXPromise *)fireSomeRequest;

@end
