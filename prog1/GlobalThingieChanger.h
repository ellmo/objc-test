//
//  GlobalThingieChanger.h
//  prog1
//
//  Created by Jakub Żuchowski on 23.04.2014.
//  Copyright (c) 2014 Jakub Żuchowski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GlobalThingieChanger : NSObject

-(void)add:(int)n;
-(void)setTo:(int)n;

-(NSString *)toString;

@end
