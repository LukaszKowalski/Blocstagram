//
//  BLCMediaTableViewCell.h
//  Blocstagram
//
//  Created by Łukasz Kowalski on 7/24/14.
//  Copyright (c) 2014 Lukasz. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BLCMedia;

@interface BLCMediaTableViewCell : UITableViewCell

@property (nonatomic, strong) BLCMedia *mediaItem;

@end
