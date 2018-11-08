//
//  SXTLiveHandler.m
//  inke
//
//  Created by Code on 2018/11/6.
//  Copyright © 2018年 top. All rights reserved.
//

#import "SXTLiveHandler.h"
#import "HttpTool.h"
#import "List.h"
#import "RootClass.h"

@implementation SXTLiveHandler



+ (void)executeGetAdvertiseWithSuccess:(SuccessBlock)success
                                failed:(FailedBlock)failed{
    [HttpTool getWithPath:URLtop params:nil success:^(id json) {
        
        NSArray * lists = [List mj_objectArrayWithKeyValuesArray:json[@"list"]  ];
        
        success (lists);
    } failure:^(NSError *error) {
        failed(error);
    }];
}


@end
