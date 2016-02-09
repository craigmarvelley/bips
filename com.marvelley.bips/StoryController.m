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
}

@end
