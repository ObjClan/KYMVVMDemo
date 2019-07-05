//
//  KYTemplateTableViewModel.m
//  KYMVVMDemo
//
//  Created by Key on 04/07/2019.
//  Copyright © 2019 Key. All rights reserved.
//

#import "KYTemplateTableViewModel.h"
#import "KYTemplateTableCellSectionModel.h"
#import "KYTemplateTableCellItemModel.h"

static NSString *const firstSectionId = @"firstSectionId";
@implementation KYTemplateTableViewModel
- (void)initData
{
    self.pageCount = 20;
    self.currentPage = 0;
}
- (void)fetchDataWithIsRefresh:(BOOL)isRefresh
{
    [super fetchDataWithIsRefresh:isRefresh];
    if (isRefresh) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            KYTemplateTableCellSectionModel *section = [[KYTemplateTableCellSectionModel alloc] init];
            section.sectionId = firstSectionId;
            NSMutableArray *items = [[NSMutableArray alloc] init];
            for (int i = 0; i < self.pageCount; i++) {
                KYTemplateTableCellItemModel *item = [[KYTemplateTableCellItemModel alloc] init];
                item.itemId = @"";
                item.className = @"KYTemplateTableViewCell";
                item.height = 100;
                [items addObject:item];
            }
            section.itemsModels = items.copy;
            self.sections = @[section];
            [self fetchDataCompleteWithIsRefresh:YES errorInfo:nil dataArray:self.sections];
        });
        
    } else {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            KYTemplateTableCellSectionModel *section = (KYTemplateTableCellSectionModel *)[self getSectionModelWithId:firstSectionId];
            NSMutableArray *items = (section.itemsModels).mutableCopy;
            NSMutableArray *addItems = @[].mutableCopy;
            for (NSInteger i = 0; i < 15; i++) {
                KYTemplateTableCellItemModel *item = [[KYTemplateTableCellItemModel alloc] init];
                item.height = 70;
                item.className = @"KYTemplateTableViewCell";
                [addItems addObject:item];
            }
            [items addObjectsFromArray:addItems.copy];
            section.itemsModels = items.copy;
            
            [self fetchDataCompleteWithIsRefresh:NO errorInfo:nil dataArray:addItems];
        });
    }
    
}
@end
