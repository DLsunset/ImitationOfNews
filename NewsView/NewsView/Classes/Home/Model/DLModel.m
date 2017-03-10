//
//  DLModel.m
//  NewsView
//
//  Created by 董雷 on 2017/3/10.
//  Copyright © 2017年 董雷. All rights reserved.
//

#import "DLModel.h"
#import <YYModel.h>

@implementation DLModel

+ (NSArray *)ArrayWithModel {
    
    NSString *jsonPath = [[NSBundle mainBundle] pathForResource:@"topic_news.json" ofType:nil];
    
    NSData *jsonData = [NSData dataWithContentsOfFile:jsonPath];
    
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:nil];
    
    NSArray *channelArray = [dict objectForKey:@"tList"];
    
    NSArray *modelArray = [NSArray yy_modelArrayWithClass:[DLModel class] json:channelArray];
    
    modelArray = [modelArray sortedArrayUsingComparator:^NSComparisonResult(DLModel *obj1, DLModel *obj2) {
        return [obj1.tid compare:obj2.tid];
    }];
    
    return modelArray;
}

@end
