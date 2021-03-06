//
//  Rectangle.h
//  prog1
//
//  Created by Jakub Żuchowski on 22.04.2014.
//  Copyright (c) 2014 Jakub Żuchowski. All rights reserved.
//

#import <Foundation/Foundation.h>

@class XYPoint;

@interface Rectangle : NSObject

@property int width, height;
@property XYPoint* origin;

-(void) setWidth: (int) w andHeight: (int) h;

-(int) area;
-(int) perimeter;

@end
