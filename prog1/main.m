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
        Fraction *f1 = [Fraction new];
        [f1 setTo:2 over:3];
    }
    return 0;
}

