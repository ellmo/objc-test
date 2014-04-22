//
//  Rectangle.m
//  prog1
//
//  Created by Jakub Żuchowski on 22.04.2014.
//  Copyright (c) 2014 Jakub Żuchowski. All rights reserved.
//

#import "Rectangle.h"
#import "XYPoint.h"


@implementation Rectangle
{
    XYPoint *origin;
}

@synthesize width, height, origin;

-(void)setWidth:(int)w andHeight:(int)h
{
    width = w;
    height = h;
}

-(int)area
{
    return width*height;
}

-(int)perimeter
{
    return (width + height) * 2;
}

@end
