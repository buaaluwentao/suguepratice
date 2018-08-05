//
//  RegisterViewController.m
//  controllerpractice
//
//  Created by luwentao on 2018/8/5.
//  Copyright © 2018年 cmb. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()
//@property (weak, nonatomic) IBOutlet UITextField *userName;
//@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UITextField *userNameTxt;

@property (weak, nonatomic) IBOutlet UITextField *passwordTxt;
- (IBAction)save:(id)sender;
@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
- (IBAction)save:(id)sender {
    
    [self dismissViewControllerAnimated:TRUE completion:nil];
    
   
    NSDictionary *userInfoDict = [NSDictionary dictionaryWithObject:[NSString stringWithFormat:@"%@-%@" ,self.userNameTxt.text ,self.passwordTxt.text] forKey:@"userInfo"];
  
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"RegisterCompletionNotification" object:nil userInfo: userInfoDict];
    
    
  

}
@end
