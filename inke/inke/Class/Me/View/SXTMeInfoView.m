//
//  SXTMeInfoView.m
//  inke
//
//  Created by Code on 2018/11/9.
//  Copyright © 2018年 top. All rights reserved.
//

#import "SXTMeInfoView.h"

@implementation SXTMeInfoView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

+ (instancetype)loadInfoView{
    
       return [[[NSBundle mainBundle] loadNibNamed:@"SXTMeInfoView" owner:self options:nil] lastObject];
    
}

@end
