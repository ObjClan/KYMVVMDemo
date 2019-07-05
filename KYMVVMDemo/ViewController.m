//
//  ViewController.m
//  KYMVVMDemo
//
//  Created by Key on 06/04/2019.
//  Copyright © 2019 Key. All rights reserved.
//

#import "ViewController.h"
#import "KYTemplateColletctionViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.navigationController pushViewController:[KYTemplateColletctionViewController new] animated:YES];
}

@end
