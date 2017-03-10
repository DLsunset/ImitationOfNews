//
//  DLNewsModel.m
//  NewsView
//
//  Created by 董雷 on 2017/3/10.
//  Copyright © 2017年 董雷. All rights reserved.
//

#import "DLNewsModel.h"
#import "NetWorking.h"
#import <YYModel.h>

@implementation DLNewsModel

+ (void)requestNewsModelArrayWithUrlStr: (NSString *)urlStr andCompletionBlock: (void (^)(NSArray *modelArray))completionBlock {
    
    [[NetWorking shareNetWorking] requestDataWithType:GET withUrlStr:urlStr withParameters:nil withSuccess:^(id responseObject) {
        NSString *key = ((NSDictionary *)responseObject).allKeys.firstObject;
        NSArray *dicArray = [((NSDictionary *)responseObject) objectForKey:key];
        
        NSArray *modelArray = [NSArray yy_modelArrayWithClass:[DLNewsModel class] json:dicArray];
        completionBlock(modelArray);
        
    } withFailure:nil];
}


@end
