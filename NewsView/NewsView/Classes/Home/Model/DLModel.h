//
//  DLModel.h
//  NewsView
//
//  Created by 董雷 on 2017/3/10.
//  Copyright © 2017年 董雷. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DLModel : NSObject

@property(nonatomic, copy) NSString *tid;
@property(nonatomic, copy) NSString *tname;


+ (NSArray *)ArrayWithModel;

@end
