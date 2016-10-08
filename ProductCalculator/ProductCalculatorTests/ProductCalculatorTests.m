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
    
    NSString* productString = [Calculator multiplyInputArray:[NSArray arrayWithObject:@""]];
    XCTAssertEqual(productString.integerValue, 0);
    
    productString = [Calculator multiplyInputArray:[NSArray arrayWithObject:@"1"]];
    XCTAssertEqual(productString.integerValue, 1);
    
    productString = [Calculator multiplyInputArray:[NSArray arrayWithObjects:@"2",@"3",nil]];
    XCTAssertEqual(productString.integerValue, 6);
    
    productString = [Calculator multiplyInputArray:[NSArray arrayWithObjects:@"",@"3",nil]];
    XCTAssertEqual(productString.integerValue, 0);
    
    productString = [Calculator multiplyInputArray:[NSArray arrayWithObjects:@"2",@"3",@"5",nil]];
    XCTAssertEqualObjects(productString,@"Please enter less than 3 integers.");
    
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
