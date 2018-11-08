
//
//  SXTHotViewController.m
//  inke
//
//  Created by Code on 2018/11/6.
//  Copyright © 2018年 top. All rights reserved.
//

#import "SXTHotViewController.h"
#import "SXTLiveHandler.h"
#import "SXTLiveCell.h"
static NSString* identifier = @"SXTLiveCell";

@interface SXTHotViewController ()
@property (nonatomic, strong) NSMutableArray * dataList;

@end

@implementation SXTHotViewController

- (NSMutableArray *)dataList {
    
    if (!_dataList) {
        _dataList = [NSMutableArray array];
    }
    return _dataList;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dataList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    
    SXTLiveCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier];

    cell.live = self.dataList[indexPath.row];
//
    return cell;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self initUI];
    [self loadDate];
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 70 + self.view.bounds.size.width + 10;
}


-(void)initUI{
    
     [self.tableView registerNib:[UINib nibWithNibName:@"SXTLiveCell" bundle:nil] forCellReuseIdentifier:identifier];
   
    
    
}

-(void)loadDate{
    [SXTLiveHandler executeGetAdvertiseWithSuccess:^(id obj) {
//        NSLog(@"%@",obj);
        [self.dataList addObjectsFromArray:obj];
        [self.tableView reloadData];
        
        
    } failed:^(id obj) {
        NSLog(@"fail ............");

    }];
    
    
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

@end
