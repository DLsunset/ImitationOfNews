//
//  NetWorking.h
//  NewsView
//
//  Created by 董雷 on 2017/3/10.
//  Copyright © 2017年 董雷. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

typedef enum : NSUInteger {
    GET,
    POST
} requestType;

@interface NetWorking : AFHTTPSessionManager

+ (instancetype)shareNetWorking;

- (void)requestDataWithType:(requestType)type withUrlStr:(NSString *)urlStr withParameters:(id)parameters withSuccess:(void(^)(id responseObject))success withFailure:(void(^)(NSError *error))failure;

@end
