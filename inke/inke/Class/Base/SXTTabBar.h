//
//  SXTTabBar.h
//  inke
//
//  Created by Code on 2018/11/5.
//  Copyright © 2018年 top. All rights reserved.
//

#import <UIKit/UIKit.h>
//定义枚举
typedef NS_ENUM(NSUInteger, SXTItemType) {
    SXTItemTypeLaunch  = 10,

    SXTItemTypeLive = 100,//展示直播
    SXTItemTypeMe,
    
};

@class SXTTabBar;
typedef void(^TabBlock)(SXTTabBar * tabbar,SXTItemType idx);



@protocol SXTTabbarDelegate <NSObject>

- (void)tabbar:(SXTTabBar *)tabbar clickIndex:(SXTItemType)idx;

@end



@interface SXTTabBar : UIView

@property (nonatomic, weak) id <SXTTabbarDelegate> delegate;
@property (nonatomic, copy) TabBlock block;


@property (nonatomic, strong) UIImageView * tabBgView;
@property (nonatomic, strong) NSArray * datalist;
@property (nonatomic, strong) UIButton   * lastItem;

@property (nonatomic, strong) UIButton * cameraBtn;

@end
