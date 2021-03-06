//
//  DLHomeViewController.m
//  NewsView
//
//  Created by 董雷 on 2017/3/10.
//  Copyright © 2017年 董雷. All rights reserved.
//

#import "DLHomeViewController.h"
#import "DLModel.h"
#import "DLTitleLabel.h"
#import "DLCollectionViewCell.h"

@interface DLHomeViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *NewsView;
@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *NewsViewFlowLayout;
@property (weak, nonatomic) IBOutlet UIScrollView *TitlelabelView;
@property (nonatomic, strong) NSArray<DLModel *> *channelArr;


@end

@implementation DLHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self requestData];
    [self setCollectionView];
}

- (void)requestData {
    
    self.channelArr = [DLModel ArrayWithModel];
    
    CGFloat width = 80;
    CGFloat height = 44;
    
    for (int i = 0 ; i < self.channelArr.count ; i++) {
        DLTitleLabel *label = [[DLTitleLabel alloc] initWithFrame:CGRectMake(i * width, 0, width, height)];
        DLModel *model = self.channelArr[i];
        label.text = model.tname;
        label.textAlignment = NSTextAlignmentCenter;
        label.font = [UIFont systemFontOfSize:15];
        [self.TitlelabelView addSubview:label];
    }
    self.TitlelabelView.contentSize = CGSizeMake(self.channelArr.count * 80, 0);
    self.TitlelabelView.showsHorizontalScrollIndicator = NO;
    self.TitlelabelView.showsVerticalScrollIndicator = NO;
}

- (void)setCollectionView {
    
    self.NewsView.dataSource = self;
    self.NewsView.delegate = self;
    self.NewsViewFlowLayout.itemSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height - 64 - 44);
    self.NewsViewFlowLayout.minimumLineSpacing = 0;
    self.NewsViewFlowLayout.minimumInteritemSpacing = 0;
    self.NewsViewFlowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.NewsView.pagingEnabled = YES;
    self.NewsView.bounces = NO;
    self.NewsView.showsVerticalScrollIndicator = NO;
    self.NewsView.showsHorizontalScrollIndicator = NO;
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.channelArr.count;
}

- (DLCollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    DLCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"item" forIndexPath:indexPath];
    
    cell.url = [NSString stringWithFormat:@"%@/0-20.html",self.channelArr[indexPath.row].tid];
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
