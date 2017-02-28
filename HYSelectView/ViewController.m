//
//  ViewController.m
//  HYSelectView
//
//  Created by shideasn on 17/2/28.
//  Copyright © 2017年 hrobrty. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <SelectDelegate>{

    NSInteger tag;
    
    NSString *provinceId;
    NSString *cityid;
    NSString *communityId;
    NSString *dd;
    NSString *bbbb;
    NSString *rr;
    NSString *ff;
    NSString *ii;
    
    NSArray *messageArr ;
    NSMutableArray *labarr;
    
    NSMutableArray *pdata;

   }
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    provinceId = @"";
    cityid = @"";
    communityId = @"";
    dd = @"";
    bbbb = @"";
    rr = @"";
    ff = @"";
    ii = @"";
    
    messageArr= @[@[@"广东省",@"湖北省"],
                  @[@"深圳市"],
                  @[@"南山区"],
                  @[@"01",@"02",@"03"],
                  @[@"03",@"02",@"03"],
                  @[@"02",@"02",@"03"],
                  @[@"01",@"02",@"03"]
                  ];
    
    labarr = [NSMutableArray new];
    
    for (int i = 99; i < 106; i++) {
        UILabel *lab = [self.view viewWithTag:i];
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(LabOnclick:)];
        [lab addGestureRecognizer:tap];
        [labarr addObject:lab];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
    
    
}

-(void)viewWillDisappear:(BOOL)animated{
      [[DialogManage ShareDialog] didDialogSelect ];
}

#pragma mark -- 调用获取省市方法

-(void)LabOnclick:(UITapGestureRecognizer *) tap{
    tag = tap.view.tag - 99;
    if (tag == 0) {
        [self getMessage];
    }else if (tag == 1){
        if (provinceId.length != 0) {
           [self getMessage];
            
    }else{
            
            
        }
    }else if (tag == 2){
        if (provinceId.length != 0 && cityid.length != 0) {
           
            
           [self getMessage];
        }else{
           
        }
    }else if (tag == 3){
        if (provinceId.length != 0 && cityid.length != 0 && communityId.length != 0) {
          [self getMessage];
            
        }else{
            
        }
    }else if (tag == 4){
        if (provinceId.length != 0 && cityid.length != 0 && communityId.length != 0) {
           [self getMessage];
        }else{
           
        }
    }else if (tag == 5){
        if (provinceId.length != 0 && cityid.length != 0 && communityId.length != 0) {
           [self getMessage];
        }else{
           
        }
    }else if (tag == 6){
        if (provinceId.length != 0 && cityid.length != 0 && communityId.length != 0) {
           [self getMessage];
        }else{
           
        }
    }
    
}

-(void)getMessage{
     pdata = messageArr[tag];
     [[DialogManage ShareDialog] showDialogSelect:self data:pdata];
}

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
    if (tag == 0) {
        provinceId = messageArr[tag][index];
            tag ++ ;
            [self getMessage];
        
    }else if (tag == 1){
         cityid = messageArr[tag][index];
        tag ++ ;
        [self getMessage];
        }
    else if (tag == 2){
         communityId = messageArr[tag][index];
        tag ++ ;
        [self getMessage];
        
        }
    else if (tag == 3){
         dd = messageArr[tag][index];
        tag ++ ;
        [self getMessage];
        }
    else if (tag == 4){
         bbbb = messageArr[tag][index];
        tag ++ ;
        [self getMessage];
        
    }else if (tag == 5){
         rr = messageArr[tag][index];
        tag ++ ;
        [self getMessage];
    }else if (tag == 6){
         ff = messageArr[tag][index];
       // tag ++ ;
        [self getMessage];
    }
}


@end
