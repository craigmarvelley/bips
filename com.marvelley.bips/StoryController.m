//
//  StoryController.m
//  com.marvelley.bips
//
//  Created by Craig Marvelley on 09/02/2016.
//  Copyright © 2016 marvelley. All rights reserved.
//

#import "StoryController.h"

@implementation StoryController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.placeNameLabel.text = self.place[@"name"];
    
    self.firstImageView.image = [UIImage imageNamed:self.place[@"image1Name"]];
    self.secondImageView.image = [UIImage imageNamed:self.place[@"image2Name"]];
    self.thirdImageView.image = [UIImage imageNamed:self.place[@"image3Name"]];
}

@end
