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
        Fraction *fraction = [Fraction new];
        
        [fraction setValues:1 :3];
        
        NSLog (@"The value of myFraction is: %@", [fraction toString]);
        
    }
    return 0;
}

