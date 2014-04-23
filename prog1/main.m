//
//  main.m
//  prog1
//
//  Created by Jakub Żuchowski on 17.12.2013.
//  Copyright (c) 2013 Jakub Żuchowski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GlobalThingieChanger.h"

int gSomeGlobalThingie = 0;

int main (int argc, const char *argv[]) {
    @autoreleasepool {
        GlobalThingieChanger *frank = [GlobalThingieChanger new];
        [frank add:3];
        NSLog(@"global thingie = %d", gSomeGlobalThingie);
        NSLog(@"global thingie in the instance = %@", [frank toString]);
    }
    return 0;
}

