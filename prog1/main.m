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
        
        [fraction setTo:27 over:86];
        
        NSLog (@"The value of myFraction is: %@", [fraction toString]);
        NSLog(@"The double value of fraction is: %f", [fraction toDouble]);
        
    }
    return 0;
}

