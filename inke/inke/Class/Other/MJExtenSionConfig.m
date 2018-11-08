//
//  MJExtenSionConfig.m
//  inke
//
//  Created by Code on 2018/11/8.
//  Copyright © 2018年 top. All rights reserved.
//

#import "MJExtenSionConfig.h"
#import "List.h"
#import "RootClass.h"
@implementation MJExtenSionConfig

+ (void)load {
    
    [NSObject mj_setupReplacedKeyFromPropertyName:^NSDictionary *{
        return @{
                 @"ID" : @"id"
                 };
    }];
    
   
    
    //下滑线
    [List mj_setupReplacedKeyFromPropertyName121:^NSString *(NSString *propertyName) {
        return [propertyName mj_underlineFromCamel];
    }];
    
    [RootClass mj_setupReplacedKeyFromPropertyName121:^NSString *(NSString *propertyName) {
        return [propertyName mj_underlineFromCamel];
    }];
}

@end
