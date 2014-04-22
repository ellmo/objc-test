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

}

- (void)setUp
{
    [super setUp];

    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSetTo
{
    Fraction *fraction = [Fraction new];
    [fraction setTo:2 over:3];
    XCTAssertEqualObjects([fraction toString], @"2/3");
}

- (void)testAdd
{
    Fraction *fraction, *fraction2, *result, *expectedResult;
    
    fraction = [Fraction new];
    fraction2 = [Fraction new];
    expectedResult = [Fraction new];
    
    [fraction setTo:2 over:3];
    [fraction2 setTo:5 over:8];
    result = [fraction add:fraction2];
    [expectedResult setTo:31 over:24];
    XCTAssertEqualObjects([result toString], [expectedResult toString]);
}

@end
