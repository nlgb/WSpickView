//
//  ViewController.m
//  WSPickerViewDemo
//
//  Created by wangsong on 16/3/23.
//  Copyright © 2016年 wangsong. All rights reserved.
//

#import "ViewController.h"
#import "WSPositionTextField.h"

@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet WSPositionTextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.textField.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITextFieldDelegate
// 该代理方法用于决定是否允许改变文本框的文字
// 是否允许用户输入文字
// 返回NO,代表不允许用户输入文字，起到拦截用户输入的作用
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    return NO;
}
@end
