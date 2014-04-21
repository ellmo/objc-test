//
//  Fraction.h
//  prog1
//
//  Created by Jakub Żuchowski on 20.04.2014.
//  Copyright (c) 2014 Jakub Żuchowski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

-(void)setTo: (int)n over: (int)d;

-(NSString *) toString;
-(double) toDouble;

@end