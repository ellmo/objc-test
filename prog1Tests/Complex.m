//
//  Complex.m
//  prog1
//
//  Created by Jakub Żuchowski on 22.04.2014.
//  Copyright (c) 2014 Jakub Żuchowski. All rights reserved.
//

#import "Complex.h"

@implementation Complex

@synthesize real, imaginary;

-(void) setReal:(double)r andImaginary:(double)i
{
    real = r;
    imaginary = i;
}

-(Complex *) add: (Complex *)c
{
    Complex *result = [Complex new];
    [result setReal: self.real + c.real
       andImaginary: self.imaginary + c.imaginary];
    return result;
}

-(NSString *) toString
{
    return [NSString stringWithFormat: @"%g+%gi", real, imaginary];
}

@end
