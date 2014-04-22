//
//  RectangleTest.m
//  prog1
//
//  Created by Jakub Żuchowski on 22.04.2014.
//  Copyright (c) 2014 Jakub Żuchowski. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Rectangle.h"
#import "XYPoint.h"


@interface RectangleTest : XCTestCase

@end

@implementation RectangleTest
{
    Rectangle *rect;
}

- (void)setUp {
    rect = [Rectangle new];
    [super setUp];
}
- (void)tearDown { [super tearDown]; }

-(void)testOrigin
{
    XYPoint *origin = [XYPoint new];
    [origin setX:6 andY:19];
    [rect setOrigin: origin];
    XCTAssertTrue([rect origin].x == 6);
    XCTAssertTrue([rect origin].y == 19);
    XCTAssertEqual(origin, [rect origin]);
}

- (void)testSetWidthAndHeight
{
    [rect setWidth:4 andHeight:5];
    XCTAssertTrue(rect.width == 4);
    XCTAssertTrue(rect.height == 5);
}

- (void)testArea
{
    [rect setWidth:4 andHeight:5];
    XCTAssertTrue([rect area] == 20);
}

- (void)testPerimeter
{
    [rect setWidth:4 andHeight:5];
    XCTAssertTrue([rect perimeter] == 18);
}

@end
