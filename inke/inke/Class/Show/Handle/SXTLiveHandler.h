//
//  SXTLiveHandler.h
//  inke
//
//  Created by Code on 2018/11/6.
//  Copyright © 2018年 top. All rights reserved.
//

#import "SXTBaseHandler.h"

@interface SXTLiveHandler : SXTBaseHandler

//下载广告
+ (void)executeGetAdvertiseWithSuccess:(SuccessBlock)success
                                failed:(FailedBlock)failed;

//热门
+ (void)executeGetHotLiveTaskWithPage:(NSInteger)pageNum
                              success:(SuccessBlock)success
                               failed:(FailedBlock)failed;

//附近
+ (void)executeNearLiveTaskWithSuccess:(SuccessBlock)success
                                failed:(FailedBlock)failed;

@end
