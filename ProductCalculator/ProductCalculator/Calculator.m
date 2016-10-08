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
   
    NSString* productString;
    if(inputArray.count<3){
        NSInteger product = 1;
        for (NSString* value in inputArray){
            product *= value.integerValue;
        }
        productString = [NSString stringWithFormat:@"%ld",(long)product];
    }
    else{
        productString = @"Please enter less than 3 integers.";
    }
    
    return productString;
}

@end
