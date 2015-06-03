//
//  TodayViewController.m
//  第一个插件
//
//  Created by Akring on 15/6/2.
//  Copyright (c) 2015年 Akring. All rights reserved.
//

#import "TodayViewController.h"
#import <NotificationCenter/NotificationCenter.h>

@interface TodayViewController () <NCWidgetProviding>

@end

@implementation TodayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
/**
 *  弹出Alert窗口
 *
 *  @param sender Widget的第一个按钮
 */
- (IBAction)showAlert:(id)sender {
    
    NSURL *url = [NSURL URLWithString:@"TodayWidgetTest://showAlert"];
    [self.extensionContext openURL:url completionHandler:^(BOOL success) {
    }];
}
/**
 *  弹出第二页
 *
 *  @param sender Widget的第二个按钮
 */
- (IBAction)modalSecondView:(id)sender {
    
    NSURL *url = [NSURL URLWithString:@"TodayWidgetTest://modalSecondView"];
    [self.extensionContext openURL:url completionHandler:^(BOOL success) {
    }];
}

/**
 *  处理左边对齐
 */
- (UIEdgeInsets)widgetMarginInsetsForProposedMarginInsets:(UIEdgeInsets)defaultMarginInsets
{
    return UIEdgeInsetsZero;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
    // Perform any setup necessary in order to update the view.
    
    // If an error is encountered, use NCUpdateResultFailed
    // If there's no update required, use NCUpdateResultNoData
    // If there's an update, use NCUpdateResultNewData

    completionHandler(NCUpdateResultNewData);
}

@end
