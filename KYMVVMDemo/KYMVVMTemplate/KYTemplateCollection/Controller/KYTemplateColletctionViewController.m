//
//  KYTemplateColletctionViewController.m
//  KYMVVMDemo
//
//  Created by Key on 05/07/2019.
//  Copyright © 2019 Key. All rights reserved.
//

#import "KYTemplateColletctionViewController.h"
#import "KYTemplateCollectionViewModel.h"
#import "KYTemplateCollectionViewCell.h"
#import "KYTemplateCollectionCellItemModel.h"
@implementation KYTemplateColletctionViewController
@synthesize viewModel = _viewModel;
- (BOOL)shouldPullDownRefresh
{
    return YES;
}
- (BOOL)shouldPullUpLoadMore
{
    return YES;
}
- (UICollectionViewFlowLayout *)collectionViewFlowLayout
{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    return layout;
}
- (KYTableViewModel *)viewModel
{
    if (!_viewModel) {
        _viewModel = [[KYTemplateCollectionViewModel alloc] init];
    }
    return _viewModel;
}
- (void)updateUIWithCell:(UITableViewCell *)cell model:(KYBaseCellItemModel *)model indexPath:(NSIndexPath *)indexPath
{
    KYTemplateCollectionViewCell *rCell = (KYTemplateCollectionViewCell *)cell;
    KYTemplateCollectionCellItemModel *rModel =(KYTemplateCollectionCellItemModel *)model;
}
@end
