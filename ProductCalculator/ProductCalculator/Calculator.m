//
//  Calculator.m
//  ProductCalculator
//
//  Created by Kanwar Zorawar Singh Rana on 10/7/16.
//  Copyright © 2016 Kanwar Zorawar Singh Rana. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

+(NSString*)multiplyInputArray:(NSArray*)inputArray{
    
    NSInteger product = 1;
    for (NSString* value in inputArray){
        if (![value isEqualToString:@""]) {
            product *= value.integerValue;
        }
    }
    NSString* productString = [NSString stringWithFormat:@"%ld",(long)product];
    return productString;
}

@end
