//
//  BLCUser.h
//  Blocstagram
//
//  Created by Łukasz Kowalski on 7/23/14.
//  Copyright (c) 2014 Lukasz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BLCUser : NSObject

@property (nonatomic, strong) NSString *idNumber;
@property (nonatomic, strong) NSString *userName;
@property (nonatomic, strong) NSString *fullName;
@property (nonatomic, strong) NSURL *profilePictureURL;
@property (nonatomic, strong) UIImage *profilePicture;

@end
