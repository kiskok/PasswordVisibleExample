//
//  JJPasswordTextField.m
//  PasswordVisibleExample
//
//  Created by KO on 2018/01/15.
//  Copyright © 2018年 KO. All rights reserved.
//

#import "JJPasswordTextField.h"

@interface JJPasswordTextField()    
@property (nonatomic, strong) UIButton *visibleButton;
@end

@implementation JJPasswordTextField
    
- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    self.visibleButton = [UIButton buttonWithType:UIButtonTypeCustom];
    if (self.secureTextEntry) {
         [self.visibleButton setImage:[UIImage imageNamed:@"visibility_off.png"] forState:UIControlStateNormal];
    } else {
        [self.visibleButton setImage:[UIImage imageNamed:@"visibility_on.png"] forState:UIControlStateNormal];
    }
   
    [self.visibleButton addTarget:self action:@selector(togglePasswordVisibility) forControlEvents:UIControlEventTouchUpInside];
    self.visibleButton.imageEdgeInsets = UIEdgeInsetsMake(0, -16, 0, 0);
    self.rightViewMode = UITextFieldViewModeAlways;
    self.rightView = self.visibleButton;
}
    
- (CGRect)rightViewRectForBounds:(CGRect)bounds
{
    CGRect rightBounds = CGRectMake(bounds.origin.x + bounds.size.width - 30, bounds.origin.y + bounds.size.height/2 - 22 , 30, 44);
    return rightBounds ;
}
    
- (void)togglePasswordVisibility
{
    if (self.secureTextEntry) {
        [self.visibleButton setImage:[UIImage imageNamed:@"visibility_on.png"] forState:UIControlStateNormal];
    } else {
        [self.visibleButton setImage:[UIImage imageNamed:@"visibility_off.png"] forState:UIControlStateNormal];
    }
    self.secureTextEntry = !self.secureTextEntry;
}

@end
