//
//  Complex.h
//  prog1
//
//  Created by Jakub Żuchowski on 22.04.2014.
//  Copyright (c) 2014 Jakub Żuchowski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property double real, imaginary;

-(void) setReal: (double) r andImaginary: (double) i;

-(Complex *) add: (Complex *) c;

-(NSString *) toString;

@end
