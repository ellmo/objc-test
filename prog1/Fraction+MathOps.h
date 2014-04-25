//
//  Fraction+MathOps.h
//  prog1
//
//  Created by Jakub Żuchowski on 25.04.2014.
//  Copyright (c) 2014 Jakub Żuchowski. All rights reserved.
//

#import "Fraction.h"

@interface Fraction (MathOps)
-(Fraction*) add: (Fraction*)fraction;
-(Fraction*) subtract: (Fraction*)fraction;
-(Fraction*) multiply: (Fraction*)fraction;
-(Fraction*) divide: (Fraction*)fraction;
@end
