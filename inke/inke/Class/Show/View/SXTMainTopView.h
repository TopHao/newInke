//
//  SXTMainTopView.h
//  inke
//
//  Created by Code on 2018/11/6.
//  Copyright © 2018年 top. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SXTMainTopView : UIView

typedef void(^MainTopBlock)(NSInteger tag);

- (instancetype)initWithFrame:(CGRect)frame titles:(NSArray *)titles ;

@property (nonatomic ,copy)MainTopBlock block;
- (void)scrolling:(NSInteger)tag;

@end
