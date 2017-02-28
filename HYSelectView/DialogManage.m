//
//  DialogManage.m
//  Legrand
//
//  Created by DavidWang on 16/5/13.
//  Copyright © 2016年 DavidWang. All rights reserved.
//

#import "DialogManage.h"
#define SCREENWITH   [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height
static DialogManage *_ShareDialog = nil;
static dispatch_once_t onceToken;

@implementation DialogManage{
    UIView *mainView;
    DialogSelectView *selectView;
    NSInteger add;
}
-(void)removePickview{
    
    [selectView removeFromSuperview ];
}

- (void)initData{
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    mainView = window.subviews[add];
}

+(instancetype)ShareDialog{
    dispatch_once(&onceToken, ^{
        _ShareDialog = [DialogManage new];
        
    });
    [_ShareDialog initData];
    return _ShareDialog;
}

-(void)selectIndex{
    add++;
}

-(void)showDialogSelect:(id) delegate data:(NSMutableArray *) data{
    if (selectView != nil){
        return;
    }
    selectView = [[[NSBundle mainBundle] loadNibNamed:@"DialogSelectView" owner:self options:nil] firstObject];
    selectView.frame = CGRectMake(0, SCREENHEIGHT,SCREENWITH, SCREENHEIGHT);
    selectView.delegate = delegate;
    selectView.data = data;
    [mainView addSubview:selectView];
    [UIView animateWithDuration:0.3 animations:^{
        selectView.frame = CGRectMake(0, 0, SCREENWITH, SCREENHEIGHT);
    } completion:^(BOOL finished) {
    }];
}


-(void)didDialogSelect{
    [UIView animateWithDuration:0.1 animations:^{
        selectView.frame = CGRectMake(0, SCREENHEIGHT,SCREENWITH, SCREENHEIGHT);
    } completion:^(BOOL finished) {
        selectView = nil;
        [selectView removeFromSuperview];
    }];
}

@end
