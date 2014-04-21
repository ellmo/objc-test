//
//  Fraction.m
//  prog1
//
//  Created by Jakub Żuchowski on 20.04.2014.
//  Copyright (c) 2014 Jakub Żuchowski. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

-(NSString *) toString {
    if (_denominator != 0) {
        return [NSString stringWithFormat:@"%d/%d", _numerator, _denominator];
    }
    else {
        return @"NAN";
    }
}

-(double)toDouble {
    if (_denominator != 0) {
        return (double) _numerator / _denominator ;
    } else {
        return NAN;
    }
}
@end
