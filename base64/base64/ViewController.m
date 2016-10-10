//
//  ViewController.m
//  base64
//
//  Created by 刘松洪 on 16/10/10.
//  Copyright © 2016年 刘松洪. All rights reserved.
//

#import "ViewController.h"
#import "base64Tool.h"
@interface ViewController ()<UITextFieldDelegate,UIGestureRecognizerDelegate>{

}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.sourceString.delegate = self;
    UITapGestureRecognizer *reg = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(hiddenKey)];
    reg.delegate = self;
    [self.view addGestureRecognizer:reg];
}

- (void)hiddenKey {
    [self.view endEditing:YES];
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    if ([string isEqualToString:@"\n"]) {//点击retun返回
        [self hiddenKey];
    }
    return YES;
}

//加密
- (IBAction)EncryptAction:(id)sender {
    NSData *EncryptData = [self.sourceString.text dataUsingEncoding:NSUTF8StringEncoding];
    self.encryptLabel.text =  [base64Tool base64EncodingWithData:EncryptData];
}

- (IBAction)DecryptionAction:(id)sender {
    NSData *resultData     = [base64Tool base64DecyptionWithData:self.encryptLabel.text];
    NSString *resultString = [[NSString alloc]initWithData:resultData encoding:NSUTF8StringEncoding];
    self.decryptionLabel.text = resultString;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
