//
//  DialogManage.h
//  Legrand
//
//  Created by DavidWang on 16/5/13.
//  Copyright © 2016年 DavidWang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "DialogSelectView.h"

@interface DialogManage : NSObject
-(void)removePickview;
+(instancetype)ShareDialog;
-(void)selectIndex;
-(void)showDialogSelect:(id) delegate data:(NSMutableArray *) data;
-(void)didDialogSelect;

@end
