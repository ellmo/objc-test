//
//  Square.m
//  prog1
//
//  Created by Jakub Żuchowski on 22.04.2014.
//  Copyright (c) 2014 Jakub Żuchowski. All rights reserved.
//

#import "Square.h"

@implementation Square: Rectangle

-(void)setSides:(int)s
{
    [self setWidth:s andHeight:s];
}

-(int)side
{
    return self.width;
}

@end
