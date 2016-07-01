//
//  ViewController.m
//  TCTools
//
//  Created by 陈 胜 on 16/6/24.
//  Copyright © 2016年 陈胜. All rights reserved.
//

#import "ViewController.h"
#import "TCSizeManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%f", CHAT_FONT_SIZE);
    NSLog(@"%f", FONT_SIZE(TCFontTextStyle10));
    NSLog(@"%f", CELL_HEIGHT(TCCellHeightStyle39));
    NSLog(@"%@", NSStringFromCGSize(ICON_SIZE(TCIconSizeStyle17)));
    NSLog(@"%f", TABBAR_HEIGHT);
    NSLog(@"%@", SIZE_CATEGORY);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
