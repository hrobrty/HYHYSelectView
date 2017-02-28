//
//  DialogSelectView.h
//  Legrand
//
//  Created by DavidWang on 16/5/13.
//  Copyright © 2016年 DavidWang. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SelectDelegate <NSObject>

-(void)BackIndexType:(NSInteger) index name:(NSString *)name;
-(void)BackIndex:(NSInteger) index;

@end

@interface DialogSelectView : UIView<UIPickerViewDataSource,UIPickerViewDelegate>

@property (weak, nonatomic) id<SelectDelegate> delegate;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
@property (weak, nonatomic) NSMutableArray *data;

- (IBAction)cancelOnclick:(id)sender;
- (IBAction)sureOnclick:(id)sender;

@end
