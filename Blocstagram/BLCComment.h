//
//  BLCComment.h
//  Blocstagram
//
//  Created by Łukasz Kowalski on 7/23/14.
//  Copyright (c) 2014 Lukasz. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BLCUser;

@interface BLCComment : NSObject

@property (nonatomic, strong) NSString *idNumber;
@property (nonatomic, strong) BLCUser *from;
@property (nonatomic, strong) NSString *text;

@end
