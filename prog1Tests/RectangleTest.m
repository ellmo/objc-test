//
//  RectangleTest.m
//  prog1
//
//  Created by Jakub Żuchowski on 22.04.2014.
//  Copyright (c) 2014 Jakub Żuchowski. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Rectangle.h"

@interface RectangleTest : XCTestCase

@end

@implementation RectangleTest

- (void)setUp { [super setUp]; }
- (void)tearDown { [super tearDown]; }

- (void)testSetWidthAndHeight
{
    Rectangle *rect = [Rectangle new];
    [rect setWidth:4 andHeight:5];
    XCTAssertTrue(rect.width == 4);
    XCTAssertTrue(rect.height == 5);
}

- (void)testArea
{
    Rectangle *rect = [Rectangle new];
    [rect setWidth:4 andHeight:5];
    XCTAssertTrue([rect area] == 20);
}

- (void)testPerimeter
{
    Rectangle *rect = [Rectangle new];
    [rect setWidth:4 andHeight:5];
    XCTAssertTrue([rect perimeter] == 18);
}

@end
