//
//  KYTemplateTableViewController.m
//  KYMVVMDemo
//
//  Created by Key on 04/07/2019.
//  Copyright © 2019 Key. All rights reserved.
//

#import "KYTemplateTableViewController.h"
#import "KYTemplateTableViewCell.h"
#import "KYTemplateTableViewModel.h"
#import "KYTemplateTableCellItemModel.h"

@implementation KYTemplateTableViewController
@synthesize viewModel = _viewModel;
- (BOOL)shouldPullDownRefresh
{
    return YES;
}
- (BOOL)shouldPullUpLoadMore
{
    return YES;
}
- (KYTableViewModel *)viewModel
{
    if (!_viewModel) {
        _viewModel = [[KYTemplateTableViewModel alloc] init];
    }
    return _viewModel;
}
- (void)updateUIWithCell:(UITableViewCell *)cell model:(KYBaseCellItemModel *)model indexPath:(NSIndexPath *)indexPath
{
    KYTemplateTableViewCell *rCell = (KYTemplateTableViewCell *)cell;
    KYTemplateTableCellItemModel *rModel =(KYTemplateTableCellItemModel *)model;
}
@end
