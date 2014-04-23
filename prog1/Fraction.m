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

-(Fraction *) add: (Fraction *)fraction
{
    Fraction *result = [Fraction new];
    
    int newDenominator = _denominator * fraction.denominator;
    int newNumerator = (_numerator * fraction.denominator) + (_denominator * fraction.numerator);
    [result setTo:newNumerator over:newDenominator];
    
    return [result reduce];
}

-(Fraction *) subtract: (Fraction *)fraction
{
    Fraction *negative = [Fraction new];
    [negative setTo: -fraction.numerator
               over: fraction.denominator];
    
    return [self add: negative];
}

-(Fraction *)multiply:(Fraction *)fraction
{
    Fraction *result = [Fraction new];
    
    [result setTo:(_numerator * fraction.numerator)
             over:(_denominator * fraction.denominator)];
    
    return [result reduce];
}

-(Fraction *)divide:(Fraction *)fraction
{
    Fraction *inversed = [Fraction new];
    [inversed setTo:fraction.denominator over:fraction.numerator];
    
    return [self multiply: inversed];
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
