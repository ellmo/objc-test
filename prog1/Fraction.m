//
//  Fraction.m
//  prog1
//
//  Created by Jakub Żuchowski on 20.04.2014.
//  Copyright (c) 2014 Jakub Żuchowski. All rights reserved.
//

#import "Fraction.h"

static int gCounter;

@implementation Fraction

@synthesize numerator = _numerator;
@synthesize denominator = _denominator;

+(Fraction *)allocF
{
    gCounter++;
    return [Fraction alloc];
}

+(int)count
{
    return gCounter;
}

-(instancetype) init {
    return [self initWith: 0 over: 1];
}

-(instancetype) initWith: (int)n over:(int)d
{
    self = [super init];
    
    if (self)
        [self setTo:n over:d];
    
    return self;
}

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

-(double) toDouble
{
    if (_denominator != 0) {
        return (double) _numerator / _denominator ;
    } else {
        return NAN;
    }
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

@end
