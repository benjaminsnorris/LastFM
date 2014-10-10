//
//  LFMArtistsViewController.m
//  LastFM
//
//  Created by Ben Norris on 10/9/14.
//  Copyright (c) 2014 BSN Design. All rights reserved.
//

#import "LFMArtistsViewController.h"
#import "NetworkController.h"

@interface LFMArtistsViewController ()

@end

@implementation LFMArtistsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    // Do any additional setup after loading the view.
    self.title = @"Artist Info";
    UIButton *searchButton = [[UIButton alloc] initWithFrame:CGRectMake(15, 100, self.view.frame.size.width - 15 * 2, 0)];
    [searchButton setTitle:@"Search" forState:UIControlStateNormal];
    [searchButton addTarget:self action:@selector(performSearch) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:searchButton];
}

- (void)performSearch {
    NSString *path = @"artist.search";
    NSDictionary *parameters = @{@"artist":@"U2",@"api_key":@"FAKE_API_KEY"};
    [[NetworkController api] GET:path parameters:parameters success:^(NSURLSessionDataTask *task, id responseObject) {
        NSString *response = responseObject;
        NSLog(@"%@",response);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"%@",error.userInfo[NSLocalizedDescriptionKey]);
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
