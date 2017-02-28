//
//  DialogSelectView.m
//  Legrand
//
//  Created by DavidWang on 16/5/13.
//  Copyright © 2016年 DavidWang. All rights reserved.
//

#import "DialogSelectView.h"

@implementation DialogSelectView
{
    NSString *phone;
    NSInteger index;
}

-(void)awakeFromNib{
    index = -1;
    phone = nil;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(BackOnclick)];
    [self addGestureRecognizer:tap];    
    _pickerView.delegate = self;
    _pickerView.dataSource = self;
}


-(void)layoutSubviews{
    [super layoutSubviews];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
// pickerView 每列个数
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [_data count];
}

// 返回选中的行
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    index = row;
    phone = [_data objectAtIndex:row];
    
}

//返回当前行的内容,此处是将数组中数值添加到滚动的那个显示栏上
-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    index = row;
    phone = [_data objectAtIndex:row];
    return [_data objectAtIndex:row];
}

-(void)BackOnclick
{
    [_delegate BackIndexType:0 name:nil];
}

- (IBAction)cancelOnclick:(id)sender
{
    [self BackOnclick];
}

- (IBAction)sureOnclick:(id)sender
{
    
    [_delegate BackIndexType:1 name:phone];
    [_delegate BackIndex:index];
  
}

@end
