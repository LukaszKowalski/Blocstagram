//
//  BLCDataSource.h
//  Blocstagram
//
//  Created by Łukasz Kowalski on 7/23/14.
//  Copyright (c) 2014 Lukasz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BLCDataSource : NSObject

+ (instancetype) sharedInstance;
@property (nonatomic, strong, readonly) NSArray *mediaItems;

@end
