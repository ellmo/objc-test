//
//  FractionTest.m
//  prog1
//
//  Created by Jakub Żuchowski on 21.04.2014.
//  Copyright (c) 2014 Jakub Żuchowski. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Fraction.h"
#import "Fraction+MathOps.h"

@interface FractionTest : XCTestCase; @end

@implementation FractionTest

- (void)setUp { [super setUp]; }
- (void)tearDown { [super tearDown]; }

- (void)testMethods
{
    Fraction *fraction = [Fraction new];
    SEL method;
    method = @selector(setTo:over:);
    XCTAssertTrue([fraction respondsToSelector:method]);
}

- (void)testStaticMethods
{
    NSMutableArray *fractions = [NSMutableArray new];
    #pragma unused(fractions)
    
    for (int i = 0; i < 3; i++) {
        [fractions addObject: [[Fraction allocF] init]] ;
    }
    XCTAssertTrue([Fraction count] == 3);
    XCTAssertTrue([fractions count] == 3);
}

- (void)testCustomInit
{
    Fraction *fraction = [Fraction new];
    XCTAssertEqualObjects([fraction toString], @"0/1");
}

- (void)testInitWithOver
{
    Fraction *fraction, *fraction2;
    fraction = [[Fraction alloc] initWith:5 over:11];
    fraction2 = [Fraction new];
    [fraction2 setTo:5 over:11];
    XCTAssertEqualObjects([fraction toString], [fraction2 toString]);
    
}

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

- (void)testSubtract
{
    Fraction *fraction, *fraction2, *result, *expectedResult;
    
    fraction = [Fraction new];
    fraction2 = [Fraction new];
    expectedResult = [Fraction new];
    
    [fraction setTo:2 over:3];
    [fraction2 setTo:5 over:8];
    result = [fraction subtract: fraction2];
    [expectedResult setTo:1 over:24];
    XCTAssertEqualObjects([result toString], [expectedResult toString]);
}

- (void)testSubtractWithReduction
{
    Fraction *fraction, *fraction2, *result, *expectedResult;
    
    fraction = [Fraction new];
    fraction2 = [Fraction new];
    expectedResult = [Fraction new];
    
    [fraction setTo:3 over:10];
    [fraction2 setTo:1 over:10];
    result = [fraction subtract: fraction2];
    [expectedResult setTo:1 over:5];
    XCTAssertEqualObjects([result toString], [expectedResult toString]);
}

- (void)testMultiply
{
    Fraction *fraction, *fraction2, *result, *expectedResult;
    
    fraction = [Fraction new];
    fraction2 = [Fraction new];
    expectedResult = [Fraction new];
    
    [fraction setTo:2 over:3];
    [fraction2 setTo:5 over:8];
    result = [fraction multiply: fraction2];
    [expectedResult setTo:5 over:12];
    XCTAssertEqualObjects([result toString], [expectedResult toString]);
}

- (void)testDivide
{
    Fraction *fraction, *fraction2, *result, *expectedResult;
    
    fraction = [Fraction new];
    fraction2 = [Fraction new];
    expectedResult = [Fraction new];
    
    [fraction setTo:2 over:3];
    [fraction2 setTo:5 over:8];
    result = [fraction divide: fraction2];
    [expectedResult setTo:16 over:15];
    XCTAssertEqualObjects([result toString], [expectedResult toString]);
}

@end
