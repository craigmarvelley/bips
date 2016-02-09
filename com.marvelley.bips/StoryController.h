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

@end
