//
//  main.m
//  prog1
//
//  Created by Jakub Żuchowski on 17.12.2013.
//  Copyright (c) 2013 Jakub Żuchowski. All rights reserved.
//

#import <Foundation/Foundation.h>

//-- @interface
@interface Fraction : NSObject
-(void) print;
-(void) setValues: (int)v1 : (int)v2;
@end

@implementation Fraction
{
    int numerator;
    int denominator;
}

-(void) setValues: (int)v1 :(int)v2 {
    numerator = v1;
    denominator = v2;
}

-(void) print {
    NSLog (@"%i/%i", numerator, denominator);
}
@end

int main (int argc, const char *argv[]) {
    @autoreleasepool {
        Fraction *fraction;
        fraction = [Fraction new];
        
        [fraction setValues:1 :3];
        
        NSLog (@"The value of myFraction is:");
        [fraction print];
    }
    return 0;
}

