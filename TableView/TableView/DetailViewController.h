//
//  DetailViewController.h
//  TableView
//
//  Created by Stella Wang on 8/27/14.
//  Copyright (c) 2014 Xiaoying Wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController{
    IBOutlet UIScrollView *Content;
    IBOutlet UITextView *TextView;
}

@property (strong, nonatomic) IBOutlet UIImageView *ImageView;
@property (strong, nonatomic) IBOutlet UILabel *NameLabel;
@property (strong, nonatomic) IBOutlet UILabel *YearLabel;
@property (weak, nonatomic) IBOutlet UILabel *LikeLabel;
@property (weak, nonatomic) IBOutlet UILabel *DislikeLabel;

@property (strong, nonatomic) NSArray *DetailContent;

- (IBAction)Like:(id)sender;
- (IBAction)Dislike:(id)sender;

@end
