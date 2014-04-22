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

- (void)setUp { [super setUp]; }
- (void)tearDown { [super tearDown]; }

- (void)testSetTo
{
    Fraction *fraction = [Fraction new];
    [fraction setTo:2 over:3];
    XCTAssertEqualObjects([fraction toString], @"2/3");
}

-(void)testReduce
{
    Fraction *fraction, *expectedResult;
    fraction = [Fraction new];
    expectedResult = [Fraction new];
    [fraction setTo:6 over:8];
    [expectedResult setTo:3 over:4];
    XCTAssertEqualObjects([[fraction reduce] toString], [expectedResult toString]);
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

- (void)testAddWithReduction
{
    Fraction *fraction, *fraction2, *result, *expectedResult;
    
    fraction = [Fraction new];
    fraction2 = [Fraction new];
    expectedResult = [Fraction new];
    
    [fraction setTo:3 over:10];
    [fraction2 setTo:11 over:10];
    result = [fraction add:fraction2];
    [expectedResult setTo:7 over:5];
    XCTAssertEqualObjects([result toString], [expectedResult toString]);
}

@end
