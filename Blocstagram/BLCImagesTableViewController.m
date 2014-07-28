//
//  BLCImagesTableViewController.m
//  Blocstagram
//
//  Created by Łukasz Kowalski on 7/22/14.
//  Copyright (c) 2014 Lukasz. All rights reserved.
//

#import "BLCImagesTableViewController.h"
#import "BLCDataSource.h"
#import "BLCMedia.h"
#import "BLCUser.h"
#import "BLCComment.h"
#import "BLCMediaTableViewCell.h"



@interface BLCImagesTableViewController ()

@property (nonatomic, strong) NSMutableArray *images;

@end

@implementation BLCImagesTableViewController


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [BLCDataSource sharedInstance].mediaItems.count;
}
- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    BLCMedia *item = [BLCDataSource sharedInstance].mediaItems[indexPath.row];
    UIImage *image = item.image;
    
    return image.size.height / image.size.width * CGRectGetWidth(self.view.frame);
}
- (id)initWithStyle:(UITableViewStyle)style{
    self = [super initWithStyle:style];
    if (self) {
        self.images = [NSMutableArray array];
    }
    return self;
}
- (void)viewDidLoad{
    [super viewDidLoad];
    
    for (int i = 1; i <= 10; i++) {
        NSString *imageName = [NSString stringWithFormat:@"%d.jpg", i];
        UIImage *image = [UIImage imageNamed:imageName];
        if (image) {
            [self.images addObject:image];
        }
    }
    [self.tableView registerClass:[BLCMediaTableViewCell class] forCellReuseIdentifier:@"imageCell"];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    BLCMediaTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"imageCell" forIndexPath:indexPath];
    static NSInteger imageViewTag = 1234;
    UIImageView *imageView = (UIImageView*)[cell.contentView viewWithTag:imageViewTag];
    
    if (!imageView) {
        imageView = [[UIImageView alloc] init];
        
        imageView.contentMode = UIViewContentModeScaleToFill;
        
        imageView.frame = cell.contentView.bounds;
        imageView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        
        imageView.tag = imageViewTag;
        [cell.contentView addSubview:imageView];
    }
 //   UIImage *image = self.images[indexPath.row];  // i don't understand this one
 //   imageView.image = image;
    
    
    BLCMedia *item = [BLCDataSource sharedInstance].mediaItems[indexPath.row];
    cel
    imageView.image = item.image;

    return cell;
}

@end
