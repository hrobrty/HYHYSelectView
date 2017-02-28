# HYHYSelectView
    一个可以封装好的pickerview，很实用，不多说…
     A good pickerview encapsulation, very practical, not much to say...
# Pods
    - pod 'HYHYSelectView'

# 实际显示效果
    ![]( https://github.com/hrobrty/HYHYSelectView/raw/master/picture/tow.png)
 
# 运行环境
    - object-c
    - Xcode 5 or higher
    - iOS 6.0 or higher
    - ARC
#  代码
 ``` java
 //
//  ViewController.h
//  HYSelectView
//
//  Created by shideasn on 17/2/28.
//  Copyright © 2017年 hrobrty. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "DialogSelectView.h"

@interface DialogManage : NSObject
-(void)removePickview;
+(instancetype)ShareDialog;
-(void)selectIndex;
// 给pickerview 传值
-(void)showDialogSelect:(id) delegate data:(NSMutableArray *) data;
//操作完成后删除视图
-(void)didDialogSelect;

@end
 
 * 实例说明 ：
 
  messageArr= @[@[@"广东省",@"湖北省"],
                  @[@"深圳市"],
                  @[@"南山区"],
                  @[@"01",@"02",@"03"],
                  @[@"03",@"02",@"03"],
                  @[@"02",@"02",@"03"],
                  @[@"01",@"02",@"03"]
                  ];

-(void)getMessage{
     pdata = messageArr[tag];
     [[DialogManage ShareDialog] showDialogSelect:self data:pdata];
}


  # pragma -m delegate
-(void)BackIndexType:(NSInteger)index name:(NSString *)name{
    
    if (name != nil) {
        UILabel *lab =  [labarr objectAtIndex:tag];
        lab.text = name;
    }
    {
        for (NSInteger i = tag + 1; i < labarr.count; i ++) {
            UILabel *lab =  [labarr objectAtIndex:i];
            lab.text = nil;
        }
    }
    
    [[DialogManage ShareDialog] didDialogSelect];
    
}

-(void)BackIndex:(NSInteger)index{

｝
 
 
 ```
 
 # Contact
        如果你发现bug或有更好的改进，please pull reqeust me
 
