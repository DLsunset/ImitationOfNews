//
//  DLHomeViewController.m
//  NewsView
//
//  Created by 董雷 on 2017/3/10.
//  Copyright © 2017年 董雷. All rights reserved.
//

#import "DLHomeViewController.h"

@interface DLHomeViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *NewsView;
@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *NewsViewFlowLayout;
@property (weak, nonatomic) IBOutlet UIScrollView *TitlelabelView;

@end

@implementation DLHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
