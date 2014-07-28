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
    
     return [BLCMediaTableViewCell heightForMediaItem:item width:CGRectGetWidth(self.view.frame)];
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
    [self.tableView registerClass:[BLCMediaTableViewCell class] forCellReuseIdentifier:@"mediaCell"];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{


    BLCMediaTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mediaCell" forIndexPath:indexPath];
    cell.mediaItem = [BLCDataSource sharedInstance].mediaItems[indexPath.row];

    return cell;
}

@end
