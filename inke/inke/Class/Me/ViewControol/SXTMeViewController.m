////
////  SXTMeViewController.m
////  inke
////
////  Created by Code on 2018/11/9.
////  Copyright © 2018年 top. All rights reserved.
////
//
//#import "SXTMeViewController.h"
//#import "SXTMeInfoView.h"
//#import "SXTSetting.h"
//
//
//@interface SXTMeViewController ()
//@property (nonatomic, strong) SXTMeInfoView * infoView;
//@property (nonatomic, strong) NSMutableArray * dataList;
//
//@end
//
//@implementation SXTMeViewController
//
//- (void)viewWillAppear:(BOOL)animated {
//
//    [super viewWillAppear:animated];
//
//    self.navigationController.navigationBarHidden = YES;
//}
//
//
//- (void)viewWillDisappear:(BOOL)animated {
//
//    [super viewWillDisappear: animated];
//
//    self.navigationController.navigationBarHidden = NO;
//}
//
//- (SXTMeInfoView *)infoView {
//
//    if (!_infoView) {
//        _infoView = [SXTMeInfoView loadInfoView];
//        self.automaticallyAdjustsScrollViewInsets = NO;
//
//    }
//    return _infoView;
//}
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    [self initUI];
//    [self loadData];
//
//    self.tableView.tableHeaderView =self.infoView;
//
//    // Uncomment the following line to preserve selection between presentations.
//    // self.clearsSelectionOnViewWillAppear = NO;
//
//    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
//}
//
//
//- (void)initUI {
//
////    self.automaticallyAdjustsScrollViewInsets = NO;
//    self.tableView.rowHeight = 60;
//    self.tableView.sectionFooterHeight = 5;
//    self.tableView.contentInset = UIEdgeInsetsMake(0, 0, 30, 0);
//}
//
//- (void)loadData {
//
//    SXTSetting * set1 = [[SXTSetting alloc] init];
//    set1.title = @"映客贡献榜";
//    set1.subtitle = @"";
//    set1.vcName = @"";
//
//    SXTSetting * set2 = [[SXTSetting alloc] init];
//    set2.title = @"收益";
//    set2.subtitle = @"0映票";
//    set2.vcName = @"";
//
//    SXTSetting * set3 = [[SXTSetting alloc] init];
//    set3.title = @"账户";
//    set3.subtitle = @"0钻石";
//    set3.vcName = @"";
//
//    SXTSetting * set4 = [[SXTSetting alloc] init];
//    set4.title = @"等级";
//    set4.subtitle = @"3级";
//    set4.vcName = @"";
//
//    SXTSetting * set5 = [[SXTSetting alloc] init];
//    set5.title = @"实名认证";
//    set5.subtitle = @"";
//    set5.vcName = @"";
//
//    SXTSetting * set6 = [[SXTSetting alloc] init];
//    set6.title = @"设置";
//    set6.subtitle = @"";
//    set6.vcName = @"";
//
//
//    NSArray * arr1 = @[set1,set2,set3];
//    NSArray * arr2 = @[set4,set5];
//    NSArray * arr3 = @[set6];
//    self.dataList = [@[arr1,arr2,arr3] mutableCopy];
//}
//
//
//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}
//
//#pragma mark - Table view data source
//
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    return self.dataList.count;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//
//    NSArray * arr = self.dataList[section];
//    return arr.count;
//}
//
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//
//
//    UITableViewCell * cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
//
//
//    SXTSetting * set = self.dataList[indexPath.section][indexPath.row];
//
//    cell.textLabel.text = set.title;
//    cell.textLabel.textColor = [UIColor grayColor];
//    cell.textLabel.font = [UIFont systemFontOfSize:15];
//    cell.detailTextLabel.text = set.subtitle;
//    cell.detailTextLabel.font = [UIFont systemFontOfSize:12];
//    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//
//
////    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
//
//    // Configure the cell...
//
//    return cell;
//}
//
//
//
//- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
//
//    if (section == 0) {
//        return self.infoView;
//    }
//    return nil;
//}
//
//- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
//
//    if (section == 0) {
//        return SCREEN_HEIGHT / 2;
//    }
//    return 0.1;
//}
//
///*
//// Override to support conditional editing of the table view.
//- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
//    // Return NO if you do not want the specified item to be editable.
//    return YES;
//}
//*/
//
///*
//// Override to support editing the table view.
//- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
//    if (editingStyle == UITableViewCellEditingStyleDelete) {
//        // Delete the row from the data source
//        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
//    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
//        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//    }
//}
//*/
//
///*
//// Override to support rearranging the table view.
//- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
//}
//*/
//
///*
//// Override to support conditional rearranging of the table view.
//- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
//    // Return NO if you do not want the item to be re-orderable.
//    return YES;
//}
//*/
//
///*
//#pragma mark - Navigation
//
//// In a storyboard-based application, you will often want to do a little preparation before navigation
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    // Get the new view controller using [segue destinationViewController].
//    // Pass the selected object to the new view controller.
//}
//*/
//
//@end
//
//  SXTMeViewController.m
//  尚学堂映客
//
//  Created by 大欢 on 16/8/16.
//  Copyright © 2016年 大欢. All rights reserved.
//

#import "SXTMeViewController.h"
#import "SXTMeInfoView.h"
#import "SXTSetting.h"

@interface SXTMeViewController ()

@property (nonatomic, strong) SXTMeInfoView * infoView;

@property (nonatomic, strong) NSMutableArray * dataList;

@end

@implementation SXTMeViewController

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated {
    
    [super viewWillDisappear: animated];
    
    self.navigationController.navigationBarHidden = NO;
}

- (SXTMeInfoView *)infoView {
    
    if (!_infoView) {
        _infoView = [SXTMeInfoView loadInfoView];
    }
    return _infoView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initUI];
    
    [self loadData];
    
    
}

- (void)initUI {
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.tableView.rowHeight = 60;
    self.tableView.sectionFooterHeight = 5;
    self.tableView.contentInset = UIEdgeInsetsMake(0, 0, 30, 0);
}

- (void)loadData {
    
    SXTSetting * set1 = [[SXTSetting alloc] init];
    set1.title = @"映客贡献榜";
    set1.subtitle = @"";
    set1.vcName = @"";
    
    SXTSetting * set2 = [[SXTSetting alloc] init];
    set2.title = @"收益";
    set2.subtitle = @"0映票";
    set2.vcName = @"";
    
    SXTSetting * set3 = [[SXTSetting alloc] init];
    set3.title = @"账户";
    set3.subtitle = @"0钻石";
    set3.vcName = @"";
    
    SXTSetting * set4 = [[SXTSetting alloc] init];
    set4.title = @"等级";
    set4.subtitle = @"3级";
    set4.vcName = @"";
    
    SXTSetting * set5 = [[SXTSetting alloc] init];
    set5.title = @"实名认证";
    set5.subtitle = @"";
    set5.vcName = @"";
    
    SXTSetting * set6 = [[SXTSetting alloc] init];
    set6.title = @"设置";
    set6.subtitle = @"";
    set6.vcName = @"";
    
    
    NSArray * arr1 = @[set1,set2,set3];
    NSArray * arr2 = @[set4,set5];
    NSArray * arr3 = @[set6];
    self.dataList = [@[arr1,arr2,arr3] mutableCopy];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return self.dataList.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSArray * arr = self.dataList[section];
    
    return arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell * cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    
    SXTSetting * set = self.dataList[indexPath.section][indexPath.row];
    
    cell.textLabel.text = set.title;
    cell.textLabel.textColor = [UIColor grayColor];
    cell.textLabel.font = [UIFont systemFontOfSize:15];
    cell.detailTextLabel.text = set.subtitle;
    cell.detailTextLabel.font = [UIFont systemFontOfSize:12];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    if (section == 0) {
        return self.infoView;
    }
    
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    
    if (section == 0) {
        return SCREEN_HEIGHT / 2;
    }
    
    return 20;
}

- (NSMutableArray *)dataList {
    
    if (!_dataList) {
        _dataList = [NSMutableArray array];
    }
    return _dataList;
}


@end

