//
//  SXTBaseHandler.h
//  inke
//
//  Created by Code on 2018/11/6.
//  Copyright © 2018年 top. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SXTBaseHandler : NSObject

/**
 *  Handler处理完成后调用的Block
 */
typedef void (^CompleteBlock)(void);

/**
 *  Handler处理成功时调用的Block
 */
typedef void (^SuccessBlock)(id obj);

/**
 *  Handler处理失败时调用的Block
 */
typedef void (^FailedBlock)(id obj);

@end
