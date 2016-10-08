//
//  ViewController.m
//  ProductCalculator
//
//  Created by Kanwar Zorawar Singh Rana on 10/7/16.
//  Copyright © 2016 Kanwar Zorawar Singh Rana. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UITextField* mTextField;
@property (nonatomic, weak) IBOutlet UILabel* mProductLbl;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFieldDidChange) name:@"UITextFieldTextDidChangeNotification" object:nil];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)textFieldDidChange{
   
    NSCharacterSet* charSet = [NSCharacterSet characterSetWithCharactersInString:@" ,"];
    NSArray* inputArray = [self.mTextField.text componentsSeparatedByCharactersInSet:charSet];
    [self.mProductLbl setText:[Calculator multiplyInputArray:inputArray]];

    
}


@end
