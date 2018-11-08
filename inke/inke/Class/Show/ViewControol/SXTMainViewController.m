//
//  SXTMainViewController.m
//  inke
//
//  Created by Code on 2018/11/5.
//  Copyright © 2018年 top. All rights reserved.
//

#import "SXTMainViewController.h"
#import "SXTMainTopView.h"

@interface SXTMainViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *contentScrollView;
@property (nonatomic, strong) NSArray * titleNames;

@property (nonatomic, strong) SXTMainTopView * topView;

@end

@implementation SXTMainViewController

- (SXTMainTopView *)topView {
    
    if (!_topView) {
        
        _topView = [[SXTMainTopView alloc] initWithFrame:CGRectMake(0, 0, 200, 40) titles:self.titleNames]  ;
        @weakify(self);
        _topView.block = ^(NSInteger tag){
            @strongify(self);
            CGPoint point = CGPointMake(tag*SCREEN_WIDTH, self.contentScrollView.contentOffset.y);
            [self.contentScrollView setContentOffset:point animated:YES];
            
        };
        
        
    }
    return _topView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self initUI];
}

- (NSArray *)titleNames {
    
    if (!_titleNames) {
        _titleNames = @[@"关注",@"热门",@"附近"];
    }
    return _titleNames;
}
- (void)initUI {
    
    self.navigationItem.titleView =self.topView;
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"global_search"] style:UIBarButtonItemStylePlain target:nil action:nil];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"title_button_more"] style:UIBarButtonItemStylePlain target:nil action:nil];
    [self setupClildViewControllers];
    
    
    
    
    
}
-(void)setupClildViewControllers{
    
    NSArray * vcNames = @[@"SXTFocuseViewController",@"SXTHotViewController",@"SXTNearViewController"];
    
    for (NSInteger i = 0 ; i < vcNames.count; i ++) {
        
        UIViewController * liveVC = [[NSClassFromString(vcNames[i]) alloc] init];
        liveVC.title = self.titleNames[i];
        [self addChildViewController:liveVC];
    }
//    设置scroolView的contentSize
    self.contentScrollView.contentSize = CGSizeMake(SCREEN_WIDTH *self.titleNames.count,0);
    
//    self.contentScrollView.contentOffset = CGPointMake(SCREEN_WIDTH, 0);
//
//    [self scrollViewDidEndScrollingAnimation:self.contentScrollView];
    [self scrollViewDidEndScrollingAnimation:self.contentScrollView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    [self scrollViewDidEndScrollingAnimation:scrollView];

}     // called when scroll view grinds to a halt

- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView {
    
    //contentScrollView的width
    CGFloat width = SCREEN_WIDTH;//scrollView.frame.size.width;
//    CGFloat width = scrollView.frame.size.width;//scrollView.frame.size.width;

    CGFloat height = SCREEN_HEIGHT;//scrollView.frame.size.height;
    
    CGFloat offsetX = scrollView.contentOffset.x;
    
    //获取索引
    NSInteger index = offsetX / width;
    
    
    
    [self.topView scrolling:index];
    
    UIViewController * childVC = self.childViewControllers[index];
    
    //视图控制器是否加载过
    if ([childVC isViewLoaded]) return;
    
    childVC.view.frame = CGRectMake(offsetX, 0, scrollView.frame.size.width, height);
    
    [scrollView addSubview:childVC.view];
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
