//
//  main.m
//  prog1
//
//  Created by Jakub Żuchowski on 17.12.2013.
//  Copyright (c) 2013 Jakub Żuchowski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main (int argc, const char *argv[]) {
    @autoreleasepool {
        @try {
            @throw [NSException exceptionWithName:@"test exception"
                                           reason:@"becasue I need it for tests"
                                         userInfo:nil];
        }
        @catch (NSException *exception) {
            NSLog(@"exception caught");
        }
        @finally {
            NSLog(@"In the finally block now");
        }
    }
    return 0;
}

