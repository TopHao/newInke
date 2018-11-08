#import <UIKit/UIKit.h>
#import "List.h"

@interface RootClass : NSObject

@property (nonatomic, strong) NSArray * list;
@property (nonatomic, assign) NSInteger maxPageId;
@property (nonatomic, strong) NSString * msg;
@property (nonatomic, assign) NSInteger pageId;
@property (nonatomic, assign) NSInteger pageSize;
@property (nonatomic, assign) NSInteger ret;
@property (nonatomic, assign) NSInteger totalCount;
@end