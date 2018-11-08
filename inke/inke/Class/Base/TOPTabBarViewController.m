//
//  TOPTabBarViewController.m
//  inke
//
//  Created by Code on 2018/11/5.
//  Copyright © 2018年 top. All rights reserved.
//

#import "TOPTabBarViewController.h"
#import "SXTTabBar.h"
#import "SXTBaseNavViewController.h"
#import "SXTLaunchViewController.h"

@interface TOPTabBarViewController ()<SXTTabbarDelegate>
@property (nonatomic, strong) SXTTabBar * sxtTabbar;

@end


@implementation TOPTabBarViewController

-(void)tabbar:(SXTTabBar *)tabbar clickIndex:(SXTItemType)idx{
    if (idx != SXTItemTypeLaunch){
        self.selectedIndex = idx - SXTItemTypeLive;
        return;
    }


    SXTLaunchViewController * launchVC = [[SXTLaunchViewController alloc] init];

    [self presentViewController:launchVC animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self configViewControllers];
    
    [self.tabBar addSubview:self.sxtTabbar];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

// 
- (void)configViewControllers {
    
    NSMutableArray * viewControlNames = [NSMutableArray arrayWithArray:@[@"SXTMainViewController",@"SXTMeViewController"]];
    
    for (NSUInteger i = 0; i < viewControlNames.count; i ++) {
        
        NSString * controllerName = viewControlNames[i];
        
        UIViewController * vc = [[NSClassFromString(controllerName) alloc] init];
        
        SXTBaseNavViewController * nav = [[SXTBaseNavViewController alloc]initWithRootViewController:vc];
        
        [viewControlNames replaceObjectAtIndex:i withObject:nav];
    }
    
    self.viewControllers = viewControlNames;
    
}

- (SXTTabBar *)sxtTabbar {
    
    if (!_sxtTabbar) {
        _sxtTabbar = [[SXTTabBar alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 49)];
        _sxtTabbar.delegate = self;
    }
    return _sxtTabbar;
}

@end
