//
//  SXTLaunchViewController.m
//  inke
//
//  Created by Code on 2018/11/5.
//  Copyright © 2018年 top. All rights reserved.
//

#import "SXTLaunchViewController.h"
#import "LFLivePreview.h"

@interface SXTLaunchViewController ()

@end

@implementation SXTLaunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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

- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)startLive:(id)sender {
    
    LFLivePreview * liveView = [[LFLivePreview alloc] initWithFrame:self.view.bounds];
    
    liveView.vc = self;
    
    [self.view addSubview:liveView];
    [liveView startLive];
    
}
@end
