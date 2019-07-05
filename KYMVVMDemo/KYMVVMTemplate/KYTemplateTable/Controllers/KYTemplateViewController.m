//
//  KYTemplateViewController.m
//  KYMVVMDemo
//
//  Created by Key on 04/07/2019.
//  Copyright © 2019 Key. All rights reserved.
//

#import "KYTemplateViewController.h"
#import "KYTemplateTableViewController.h"
@interface KYTemplateViewController ()
@property (nonatomic, strong) KYTemplateTableViewController *tabViewVC;
@end

@implementation KYTemplateViewController

- (KYTemplateTableViewController *)tabViewVC
{
    if (!_tabViewVC) {
        _tabViewVC = [[KYTemplateTableViewController alloc] init];
    }
    return _tabViewVC;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self addChildViewController:self.tabViewVC];
    [self.view addSubview:self.tabViewVC.view];
    [self.tabViewVC.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuide);
        make.left.and.right.equalTo(self.view);
        make.bottom.equalTo(self.mas_bottomLayoutGuide);
    }];
}

@end
