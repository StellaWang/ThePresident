//
//  TableViewCell.h
//  TableView
//
//  Created by Stella Wang on 8/27/14.
//  Copyright (c) 2014 Xiaoying Wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *ImageLabel;
@property (strong, nonatomic) IBOutlet UILabel *NameLabel;
@property (strong, nonatomic) IBOutlet UILabel *YearLabel;

@end
