//
//  ViewController.m
//  AES_iOS
//
//  Created by Levi on 2016/3/27.
//  Copyright © 2017年 SL. All rights reserved.
//

#import "ViewController.h"
#import "NSData+AES256.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString* message = @"http://gxapp.iydsj.com/api/v3/users/check/code/15258878812/1";
    
    NSString* str = [NSData AES256EncryptWithPlainText:message];
    
    NSString* res = [NSData AES256DecryptWithCiphertext:@"6dIKqLaQIdCSnBygzPJC5ijastviUy2k8qoW2NWDBEvrbbdoOiR+9SXcCcsk+tJba1rIK2WqQyog5Gmshd6LtA=="];
    
    NSLog(@"加密：%@",str);
    NSLog(@"解密%@",res);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
