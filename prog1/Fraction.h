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

+(Fraction *) allocF;
+(int) count;

-(instancetype) initWith: (int)n over: (int)d;

-(void) setTo: (int)n over: (int)d;
-(Fraction*) reduce;

-(NSString *) toString;
-(double) toDouble;

@end