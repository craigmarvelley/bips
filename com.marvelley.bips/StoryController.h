//
//  StoryController.h
//  com.marvelley.bips
//
//  Created by Craig Marvelley on 09/02/2016.
//  Copyright © 2016 marvelley. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StoryController : UIViewController

@property (strong, nonatomic) NSDictionary *place;

@property (weak, nonatomic) IBOutlet UILabel *placeNameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *firstImageView;
@property (weak, nonatomic) IBOutlet UIImageView *secondImageView;
@property (weak, nonatomic) IBOutlet UIImageView *thirdImageView;
@property (weak, nonatomic) IBOutlet UITextView *storyTextView;

@end
