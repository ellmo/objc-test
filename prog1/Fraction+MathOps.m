//
//  Fraction+MathOps.m
//  prog1
//
//  Created by Jakub Żuchowski on 25.04.2014.
//  Copyright (c) 2014 Jakub Żuchowski. All rights reserved.
//

#import "Fraction+MathOps.h"

@implementation Fraction (MathOps)

-(Fraction *) add: (Fraction *)fraction
{
    Fraction *result = [Fraction new];
    
    int newDenominator = self.denominator * fraction.denominator;
    int newNumerator = (self.numerator * fraction.denominator) + (self.denominator * fraction.numerator);
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
    
    [result setTo:(self.numerator * fraction.numerator)
             over:(self.denominator * fraction.denominator)];
    
    return [result reduce];
}

-(Fraction *)divide:(Fraction *)fraction
{
    Fraction *inversed = [Fraction new];
    [inversed setTo:fraction.denominator over:fraction.numerator];
    
    return [self multiply: inversed];
}



@end
