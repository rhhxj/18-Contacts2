//
//  RYEditContactViewController.m
//  18-Contacts
//
//  Created by Touptek on 16/5/30.
//  Copyright © 2016年 com.test. All rights reserved.
//

#import "RYEditContactViewController.h"
#import "RYContact.h"

@interface RYEditContactViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *phoneField;
@property (weak, nonatomic) IBOutlet UITextField *youxField;
@property (weak, nonatomic) IBOutlet UIButton *saveBtn;

@end

@implementation RYEditContactViewController

/**
 *  编辑/取消
 */
- (IBAction)edit:(UIBarButtonItem *)sender {
    
    if ([sender.title isEqualToString:@"编辑"]) {
        sender.title = @"取消";
        
        self.nameField.enabled = YES;
        self.phoneField.enabled = YES;
        self.youxField.enabled = YES;
        
        [self.phoneField becomeFirstResponder];
        
        self.saveBtn.hidden = NO;
    } else {
        
        sender.title = @"编辑";
        
        self.nameField.enabled = NO;
        self.phoneField.enabled = NO;
        self.youxField.enabled = NO;
        
        self.nameField.text = self.contact.name;
        self.phoneField.text = self.contact.phoneNum;
        self.youxField.text = self.contact.youx;
        
        
        self.saveBtn.hidden = YES;
        
        [self.view endEditing:YES];
    }
}


/**
 *  保存
 */
- (IBAction)save {
    [self.navigationController popViewControllerAnimated:YES];
    
    self.contact.name = self.nameField.text;
    self.contact.phoneNum = self.phoneField.text;
    self.contact.youx = self.youxField.text;
    
    if ([self.delegate respondsToSelector:@selector(editContactViewController:didClickSaveContact:)]) {
        [self.delegate editContactViewController:self didClickSaveContact:self.contact];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 显示模型
    self.nameField.text = self.contact.name;
    self.phoneField.text = self.contact.phoneNum;
    self.youxField.text =self.contact.youx;
    
    
}

@end
