//
//  ViewController.h
//  base64
//
//  Created by 刘松洪 on 16/10/10.
//  Copyright © 2016年 刘松洪. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *encryptLabel;
@property (strong, nonatomic) IBOutlet UILabel *decryptionLabel;
@property (strong, nonatomic) IBOutlet UIButton *encryptBtn;
@property (strong, nonatomic) IBOutlet UIButton *decryptionBtn;

@property (strong, nonatomic) IBOutlet UITextField *sourceString;

@end

