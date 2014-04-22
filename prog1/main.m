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
        Fraction *fraction2 = [Fraction new];
        
        [fraction setTo:2 over:3];
        [fraction2 setTo:5 over:8];
        NSLog(@"%@ + %@ = %@", [fraction toString], [fraction2 toString], [[fraction add:fraction2] toString]);
    }
    return 0;
}

