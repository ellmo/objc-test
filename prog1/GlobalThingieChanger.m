//
//  GlobalThingieChanger.m
//  prog1
//
//  Created by Jakub Żuchowski on 23.04.2014.
//  Copyright (c) 2014 Jakub Żuchowski. All rights reserved.
//

#import "GlobalThingieChanger.h"

@implementation GlobalThingieChanger

-(void)add:(int)n
{
    extern int gSomeGlobalThingie;
    gSomeGlobalThingie += n;
}

-(void)setTo:(int)n
{
    extern int gSomeGlobalThingie;
    gSomeGlobalThingie = n;
}

-(NSString *)toString
{
    extern int gSomeGlobalThingie;
    return [NSString stringWithFormat:@"%d", gSomeGlobalThingie];
}

@end
