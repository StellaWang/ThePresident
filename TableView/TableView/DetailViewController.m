//
//  DetailViewController.m
//  TableView
//
//  Created by Stella Wang on 8/27/14.
//  Copyright (c) 2014 Xiaoying Wang. All rights reserved.
//

#import "DetailViewController.h"
#import "TableViewController.h"

@interface DetailViewController ()

@property (nonatomic) int GWlike, GWdislike;
@property (nonatomic) int JAlike, JAdislike;
@property (nonatomic) int TJlike, TJdislike;

@end

@implementation DetailViewController
@synthesize LikeLabel;
@synthesize DislikeLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _NameLabel.text = _DetailContent[0];
    _ImageView.image = [UIImage imageNamed:_DetailContent[1]];
    _YearLabel.text = _DetailContent[2];
    
    self.navigationItem.title = _DetailContent[0];
    [Content setScrollEnabled:YES];
    [Content setContentSize:CGSizeMake(268, 500)];
    TextView.editable = NO;
    
    if ([_NameLabel.text isEqualToString:@"George Washington"]) {
        TextView.text = @"On April 30, 1789, George Washington, standing on the balcony of Federal Hall on Wall Street in New York, took his oath of office as the first President of the United States. 'As the first of every thing, in our situation will serve to establish a Precedent,' he wrote James Madison, 'it is devoutly wished on my part, that these precedents may be fixed on true principles.'";
        self.LikeLabel.text = [NSString stringWithFormat:@"Like %d", _GWlike];
        self.DislikeLabel.text = [NSString stringWithFormat:@"Dislike %d", _GWdislike];
    }
    
    if ([_NameLabel.text isEqualToString:@"John Adams"]) {
        TextView.text = @"Learned and thoughtful, John Adams was more remarkable as a political philosopher than as a politician. 'People and nations are forged in the fires of adversity,' he said, doubtless thinking of his own as well as the American experience.";
        self.LikeLabel.text = [NSString stringWithFormat:@"Like %d", _JAlike];
        self.DislikeLabel.text = [NSString stringWithFormat:@"DisLike %d", _JAdislike];
    }

    if ([_NameLabel.text isEqualToString:@"Thomas Jefferson"]) {
        TextView.text = @"In the thick of party conflict in 1800, Thomas Jefferson wrote in a private letter, 'I have sworn upon the altar of God eternal hostility against every form of tyranny over the mind of man.'";
        self.LikeLabel.text = [NSString stringWithFormat:@"Like %d", _TJlike];
        self.DislikeLabel.text = [NSString stringWithFormat:@"DisLike %d", _TJdislike];
    }
}

- (IBAction)Like:(id)sender{
    if ([_NameLabel.text isEqualToString:@"George Washington"]) {
        self.GWlike++;
        self.LikeLabel.text = [NSString stringWithFormat:@"Like %d", _GWlike];
    }
    if ([_NameLabel.text isEqualToString:@"John Adams"]) {
        self.JAlike++;
        self.LikeLabel.text = [NSString stringWithFormat:@"Like %d", _JAlike];
    }
    if ([_NameLabel.text isEqualToString:@"Thomas Jefferson"]) {
        self.TJlike++;
        self.LikeLabel.text = [NSString stringWithFormat:@"Like %d", _TJlike];
    }
}

- (IBAction)Dislike:(id)sender{
    if ([_NameLabel.text isEqualToString:@"George Washington"]) {
        self.GWdislike++;
        self.DislikeLabel.text = [NSString stringWithFormat:@"Dislike %d", _GWdislike];
    }
    if ([_NameLabel.text isEqualToString:@"John Adams"]) {
        self.JAdislike++;
        self.DislikeLabel.text = [NSString stringWithFormat:@"DisLike %d", _JAdislike];
    }
    if ([_NameLabel.text isEqualToString:@"Thomas Jefferson"]) {
        self.TJdislike++;
        self.DislikeLabel.text = [NSString stringWithFormat:@"DisLike %d", _TJdislike];
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
