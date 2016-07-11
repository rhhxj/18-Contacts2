//
//  RYContact.h
//  18-Contacts
//
//  Created by Touptek on 16/5/30.
//  Copyright © 2016年 com.test. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RYContact : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *phoneNum;
@property (nonatomic, copy) NSString *youx;
- (instancetype)initWithName:(NSString *)name PhoneNum:(NSString *)phoneNum Youx:(NSString *)youx;
+ (instancetype)contactWithName:(NSString *)name PhoneNum:(NSString *)phoneNum Youx:(NSString *)youx;

@end
