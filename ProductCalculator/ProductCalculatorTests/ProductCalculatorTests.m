//
//  ProductCalculatorTests.m
//  ProductCalculatorTests
//
//  Created by Kanwar Zorawar Singh Rana on 10/7/16.
//  Copyright © 2016 Kanwar Zorawar Singh Rana. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Calculator.h"

@interface ProductCalculatorTests : XCTestCase

@end

@implementation ProductCalculatorTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    
    NSString* productString = [Calculator multiplyInputArray:[NSArray arrayWithObjects:@"1",@"2",@"2",@"1",nil]];
    XCTAssertEqual(productString.integerValue, 4);
    
    productString = [Calculator multiplyInputArray:[NSArray arrayWithObjects:@"1",@"1",@"2",@"1",nil]];
    XCTAssertEqual(productString.integerValue, 2);
    
    productString = [Calculator multiplyInputArray:[NSArray arrayWithObjects:@"1",@"2",@"3",@"4",nil]];
    XCTAssertEqual(productString.integerValue, 24);}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
