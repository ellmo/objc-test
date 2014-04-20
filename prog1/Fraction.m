//
//  Fraction.m
//  prog1
//
//  Created by Jakub Żuchowski on 20.04.2014.
//  Copyright (c) 2014 Jakub Żuchowski. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
{
    int numerator;
    int denominator;
}

-(void) setValues: (int)v1 :(int)v2 {
    numerator = v1;
    denominator = v2;
}

-(NSString *) toString {
    return [NSString stringWithFormat:@"%d/%d", numerator, denominator];
}
@end
