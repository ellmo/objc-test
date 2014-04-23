//
//  RandomTest.m
//  prog1
//
//  Created by Jakub Żuchowski on 23.04.2014.
//  Copyright (c) 2014 Jakub Żuchowski. All rights reserved.
//

#import <XCTest/XCTest.h>

int gNumber = 0;

@interface RandomTest : XCTestCase
@end

@implementation RandomTest

- (void)setUp
{
    [super setUp];
    gNumber++;
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testExample
{
    NSLog(@"global number is now %i", gNumber);
}

- (void)testExample2
{
    NSLog(@"global number is now %i", gNumber);
}

- (void)testExample3
{
    NSLog(@"global number is now %i", gNumber);
}
@end
