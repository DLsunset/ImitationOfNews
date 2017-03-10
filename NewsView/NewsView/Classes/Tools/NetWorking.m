//
//  NetWorking.m
//  NewsView
//
//  Created by 董雷 on 2017/3/10.
//  Copyright © 2017年 董雷. All rights reserved.
//

#import "NetWorking.h"

@implementation NetWorking

+ (instancetype)shareNetWorking {
    
    static NetWorking *netWork;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        netWork = [[NetWorking alloc] initWithBaseURL:[NSURL URLWithString:@"http://c.m.163.com/nc/article/list/"]];
    });
    return netWork;
}

- (void)requestDataWithType:(requestType)type withUrlStr:(NSString *)urlStr withParameters:(id)parameters withSuccess:(void(^)(id responseObject))success withFailure:(void(^)(NSError *error))failure {
    
    
    if (type == GET) {
        [self GET:urlStr parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            success(responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            failure(error);
        }];
    }else {
        [self POST:urlStr parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            success(responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            failure(error);
        }];
    }
}
@end
