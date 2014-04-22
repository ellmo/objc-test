//
//  Fraction.m
//  prog1
//
//  Created by Jakub Żuchowski on 20.04.2014.
//  Copyright (c) 2014 Jakub Żuchowski. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

-(void)setTo:(int)n over:(int)d
{
    _numerator = n;
    _denominator = d;
}

-(Fraction *) reduce
{
    int newNumerator = _numerator;
    int newDenominator = _denominator;
    int temp;
    
    while (newDenominator != 0)
    {
        temp = newNumerator % newDenominator;
        newNumerator = newDenominator;
        newDenominator = temp;
    }
    _numerator /= newNumerator;
    _denominator /= newNumerator;
    
    return self;
}

-(Fraction *) add: (Fraction *)frac2
{
    Fraction *result = [Fraction new];
    
    int newDenominator = _denominator * frac2.denominator;
    int newNumerator = (_numerator * frac2.denominator) + (_denominator * frac2.numerator);
    result.numerator = newNumerator;
    result.denominator = newDenominator;
    
    return [result reduce];
}

-(NSString *) toString
{
    if (_denominator != 0) {
        return [NSString stringWithFormat:@"%d/%d", _numerator, _denominator];
    }
    else {
        return @"NAN";
    }
}

-(double) toDouble
{
    if (_denominator != 0) {
        return (double) _numerator / _denominator ;
    } else {
        return NAN;
    }
}
@end
