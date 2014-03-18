//
//  ViewController.m
//  InfoBar
//
//  Created by Xchobo on 2014/3/19.
//  Copyright (c) 2014年 Xchobo. All rights reserved.
//

#import "ViewController.h"
#import "ZAActivityBar.h"


@interface ViewController ()

- (IBAction)show:(id)sender;
- (IBAction)showSuccess:(id)sender;
- (IBAction)showError:(id)sender;
- (IBAction)dismiss:(id)sender;


@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)show:(id)sender {
    // 呼叫訊息
    [ZAActivityBar showWithStatus:@"目前網路異常中..."];
}

- (IBAction)showSuccess:(id)sender {
    // 通知訊息成功
    [ZAActivityBar showSuccessWithStatus:@"成功連結至網路"];
}

- (IBAction)showError:(id)sender {
    // 出現錯誤後隱藏
    [ZAActivityBar showErrorWithStatus:@"發生無法處理的錯誤"];
}

- (IBAction)dismiss:(id)sender {
    // 強制關閉訊息
    [ZAActivityBar dismiss];
}
@end
