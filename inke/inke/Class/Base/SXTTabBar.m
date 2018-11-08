//
//  SXTTabBar.m
//  inke
//
//  Created by Code on 2018/11/5.
//  Copyright © 2018年 top. All rights reserved.
//

#import "SXTTabBar.h"
//@interface SXTTabbar ()

@implementation SXTTabBar

- (NSArray *)datalist {
    
    if (!_datalist) {
        _datalist = @[@"tab_live",@"tab_me"];
    }
    return _datalist;
}

- (UIButton *)cameraBtn {
    
    if (!_cameraBtn) {
        _cameraBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_cameraBtn setImage:[UIImage imageNamed:@"tab_launch"] forState:UIControlStateNormal];
        [_cameraBtn sizeToFit];
        _cameraBtn.tag = SXTItemTypeLaunch;

        [_cameraBtn addTarget:self action:@selector(clickItem:) forControlEvents:UIControlEventTouchUpInside];
//        _cameraBtn.tag = SXTItemTypeLaunch;
    }
    return _cameraBtn;
}

- (UIImageView *)tabBgView {
    
    if (!_tabBgView) {
        _tabBgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"global_tab_bg"]];
    }
    return _tabBgView;
}


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
//        装载背景
        [self addSubview:self.tabBgView];
        
        for (int i = 0; i < self.datalist.count; i++) {
            UIButton * item = [UIButton buttonWithType:UIButtonTypeCustom];
            item.adjustsImageWhenHighlighted = NO;
            [item setImage:[UIImage imageNamed:self.datalist[i]] forState:UIControlStateNormal];
            [item setImage:[UIImage imageNamed:[self.datalist[i] stringByAppendingString:@"_p"]] forState:UIControlStateSelected];
            
            if (i == 0) {
                item.selected = YES;
                self.lastItem = item;
            }

            item.tag = SXTItemTypeLive + i;
            [item addTarget:self action:@selector(clickItem:) forControlEvents:UIControlEventTouchUpInside];
//             UICOntr？？？
            [self addSubview:item];
        }
        [self addSubview:self.cameraBtn];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
//    CGFloat width = self.frame.size.width / self.datalist.count;
//
//    for (UIView * btn in self.subviews) {
//
//        if (btn.tag >= SXTItemTypeLive) {
//
//            btn.frame = CGRectMake((btn.tag - SXTItemTypeLive) * width, 0, width, self.frame.size.height);
//        }
//    }
    self.tabBgView.frame = self.bounds;
    CGFloat width = self.bounds.size.width/self.datalist.count;
    for (NSUInteger i =0; i<[self subviews].count; i++) {
        UIView * btn = [self subviews][i];
        if ([btn isKindOfClass:[UIButton  class]]){
            btn.frame = CGRectMake((btn.tag - SXTItemTypeLive) * width, 0, width, self.frame.size.height);
        }
    }
    self.tabBgView.frame = self.frame;
    self.cameraBtn.frame = CGRectMake(0, 0, 100, self.frame.size.height);
    self.cameraBtn.center = CGPointMake(self.frame.size.width * 0.5, self.frame.size.height * 0.5 - 20);
}

- (void)clickItem:(UIButton *)button {
    
    if ([self.delegate respondsToSelector:@selector(tabbar:clickIndex:)]) {
        
        [self.delegate tabbar:self clickIndex:button.tag];
    }
    
    if (self.block) {
        self.block(self,button.tag);
    }
    if (button.tag == SXTItemTypeLaunch) {
        return;
    }
    //将上一个按钮的选中状态置为NO
    self.lastItem.selected = NO;
    //将正在点击的按钮状态置为YES
    button.selected = YES;
    //将当前按钮设置成上一个按钮
    self.lastItem = button;

    [UIView animateWithDuration:0.2 animations:^{

        button.transform = CGAffineTransformMakeScale(1.2, 1.2);

    } completion:^(BOOL finished) {

        [UIView animateWithDuration:0.2 animations:^{

            button.transform = CGAffineTransformIdentity;
        }];
    }];
    
    
    
}


@end
