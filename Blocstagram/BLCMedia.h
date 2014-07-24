//
//  BLCMedia.h
//  Blocstagram
//
//  Created by Łukasz Kowalski on 7/23/14.
//  Copyright (c) 2014 Lukasz. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BLCUser;

@interface BLCMedia : NSObject

@property (nonatomic, strong) NSString *idNumber;
@property (nonatomic, strong) BLCUser *user;
@property (nonatomic, strong) NSURL *mediaURL;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *caption;
@property (nonatomic, strong) NSArray *comments;

@end
