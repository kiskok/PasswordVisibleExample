//
//  ViewController.m
//  PasswordVisibleExample
//
//  Created by KO on 2018/01/15.
//  Copyright © 2018年 KO. All rights reserved.
//

#import "ViewController.h"
#import "JJPasswordTextField.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet JJPasswordTextField *passwordField;
    
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.passwordField.secureTextEntry = YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
