//
//  APIConfig.h
//  inke
//
//  Created by Code on 2018/11/6.
//  Copyright © 2018年 top. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APIConfig : NSObject
#define SERVER_HOST @"http://service.ingkee.com"

#define IMAGE_HOST @"http://img.meelive.cn/"

//首页数据
#define API_LiveGetTop @"api/live/gettop"

//广告地址
#define API_Advertise @"advertise/get"

//热门话题
#define API_TopicIndex @"api/live/topicindex"



#define URLtop @"http://subapp.ximalaya.com/index/910?page_id=1&device=iPhone&version=1.1.5"

//附近的人
#define API_NearLocation @"api/live/near_recommend"//?uid=85149891&latitude=40.090562&longitude=116.413353

@end
