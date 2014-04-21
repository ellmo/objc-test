//
//  FractionTest.m
//  prog1
//
//  Created by Jakub Żuchowski on 21.04.2014.
//  Copyright (c) 2014 Jakub Żuchowski. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Fraction.h"

@interface FractionTest : XCTestCase; @end

@implementation FractionTest
{
    Fraction *fraction;
}

- (void)setUp
{
    [super setUp];
    fraction = [Fraction new];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    [fraction setTo:2 over:3];
    XCTAssertEqualObjects([fraction toString], @"2/3");
}

@end
