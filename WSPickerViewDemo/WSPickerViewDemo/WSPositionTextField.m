//
//  WSPositionTextField.m
//  WSPickerViewDemo
//
//  Created by wangsong on 16/3/23.
//  Copyright © 2016年 wangsong. All rights reserved.
//

#import "WSPositionTextField.h"

@interface WSPositionTextField ()<UIPickerViewDelegate,UIPickerViewDataSource>
/** 职位数组 */
@property(nonatomic,strong) NSArray *positions;
@end


@implementation WSPositionTextField

// 输入职称的textfield
- (void)awakeFromNib
{
    self.placeholder = @"点我输入";
    [self setupKeyBoard];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        // 自定义键盘 pickerview
        [self setupKeyBoard];
    }
    return self;
}

- (void)setupKeyBoard
{
    UIPickerView *pickView = [[UIPickerView alloc] init];
    pickView.dataSource = self;
    pickView.delegate = self;
    self.inputView = pickView;
    
}

#pragma mark - UIPickerViewDataSource
// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return self.positions.count;
}
// 返回某列、某行的内容
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return self.positions[row];
}

#pragma mark - UIPickerViewDelegate
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    self.text = self.positions[row];
}
#pragma mark - getter AND setter
- (NSArray *)positions
{
    if (!_positions) {
        _positions = @[@"总经理",@"秘书",@"普通职员",@"总监",@"业务人员"];
        
    }
    return _positions;
}
@end
