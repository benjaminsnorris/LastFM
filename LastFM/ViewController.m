//
//  ViewController.m
//  LastFM
//
//  Created by Ben Norris on 10/9/14.
//  Copyright (c) 2014 BSN Design. All rights reserved.
//

#import "ViewController.h"
#import "NetworkController.h"
#import "LFMArtistsViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *usernameField;
@property (strong, nonatomic) IBOutlet UITextField *passwordField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)submit:(id)sender {
    LFMArtistsViewController *artistsViewController = [LFMArtistsViewController new];
    [self showViewController:artistsViewController sender:self];
//    NSString *path = @"auth.getMobileSession";
//    NSDictionary *parameters = @{@"username":self.usernameField.text,@"password":self.passwordField.text,@"api_key":@"FAKE_API_KEY",@"api_sig":@""};
//    [[NetworkController api] POST:path parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
//        NSString *sessionKey = responseObject;
//        NSLog(@"%@",sessionKey);
//    } failure:^(NSURLSessionDataTask *task, NSError *error) {
//        NSLog(@"%@",error.userInfo[NSLocalizedDescriptionKey]);
//    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
