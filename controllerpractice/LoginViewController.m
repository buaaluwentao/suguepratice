//
//  LoginViewController.m
//  controllerpractice
//
//  Created by luwentao on 2018/8/5.
//  Copyright © 2018年 cmb. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()
//-(void) registerComplete:(NSNotification * )mess;
@property (weak, nonatomic) IBOutlet UITextField *userNameTxt;
@property (weak, nonatomic) IBOutlet UITextField *passwordTxt;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[NSNotificationCenter defaultCenter] addObserver:self selector: @selector(registerComplete:) name:@"RegisterCompletionNotification" object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
-(void) registerComplete:(NSNotification * ) mess{
    
    
    NSDictionary *theData = [mess userInfo];
    
    NSString * userInfo = [theData objectForKey:@"userInfo"];
    if( [userInfo length]){
        //NSLog(@"usetName=%@,password=%@" ,userName ,password);
        
        self.userNameTxt.text = [userInfo componentsSeparatedByString:@"-"][0];
        self.passwordTxt.text = [userInfo componentsSeparatedByString:@"-"][1];
    }
    
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
