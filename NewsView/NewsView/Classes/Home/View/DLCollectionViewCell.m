//
//  DLCollectionViewCell.m
//  NewsView
//
//  Created by 董雷 on 2017/3/10.
//  Copyright © 2017年 董雷. All rights reserved.
//

#import "DLCollectionViewCell.h"
#import "DLTableViewController.h"


@implementation DLCollectionViewCell {
    DLTableViewController *_table;
}

-(void)awakeFromNib {
    [super awakeFromNib];
    _table = [[DLTableViewController alloc] init];
    [self.contentView addSubview:_table.tableView];
    
    _table.tableView.frame = self.contentView.bounds;
    
    _table.tableView.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256) / 255.0 green:arc4random_uniform(256) / 255.0 blue:arc4random_uniform(256) / 255.0 alpha:1];
}



- (void)setUrl:(NSString *)url {
    _url = url;
    _table.url = url;
}


@end
