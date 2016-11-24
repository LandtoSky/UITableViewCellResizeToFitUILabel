//
//  FirstVC.m
//  DynamicCellHeight
//
//  Created by LandToSky on 11/24/16.
//  Copyright © 2016 mkswap.net. All rights reserved.
//

#import "FirstVC.h"

@interface FirstVC ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation FirstVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.label setText: @"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum    has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."];
    _label.numberOfLines = 0;
    [_label sizeToFit];
    NSLog(@"Height = %f Width = %f", _label.frame.size.height, _label.frame.size.width);
  
}

- (void)adjustLabelHeight:(UILabel*) label
{
    CGSize maximumLabelSize = CGSizeMake(296, FLT_MAX);

    CGSize expectedLabelSize = [label.text sizeWithFont:label.font constrainedToSize:maximumLabelSize lineBreakMode:label.lineBreakMode];

    //adjust the label the the new height.
    CGRect newFrame = label.frame;
    newFrame.size.height = expectedLabelSize.height;
    label.frame = newFrame;
    

}


@end
