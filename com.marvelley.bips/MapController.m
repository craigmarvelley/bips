//
//  MapController.m
//  com.marvelley.bips
//
//  Created by Craig Marvelley on 09/02/2016.
//  Copyright © 2016 marvelley. All rights reserved.
//

#import "MapController.h"
#import "StoryController.h"

@implementation MapController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self loadPlaces];
    [self positionImagesForPlacesOnMap];
}

- (void)loadPlaces
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Places" ofType:@"plist"];
    
    self.places = [[NSArray alloc] initWithContentsOfFile:path];
}

- (void)positionImagesForPlacesOnMap
{
    for (NSDictionary *place in self.places) {
        UIButton *placeButton = [self createButtonForPlace:place];

        placeButton.tag = [self.places indexOfObject:place];
        
        [self.view addSubview:placeButton];
    }
}

- (UIButton *)createButtonForPlace:(NSDictionary *)place
{
    NSInteger xCoordinate = [place[@"x_coordinate"] integerValue];
    NSInteger yCoordinate = [place[@"y_coordinate"] integerValue];
    NSInteger imageWidth = 50;
    NSInteger imageHeight = 50;
    
    UIImage *placeImage = [UIImage imageNamed:@"Magnifying glass"];

    CGRect placeFrame = CGRectMake(xCoordinate, yCoordinate, imageWidth, imageHeight);
    
    UIButton *placeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    placeButton.frame = placeFrame;
    
    [placeButton setImage:placeImage forState:UIControlStateNormal];
    
    [placeButton addTarget:self action:@selector(placeButtonWasPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    return placeButton;
}

- (void)placeButtonWasPressed:(id)sender
{
    [self performSegueWithIdentifier:@"story" sender:sender];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    StoryController *controller = segue.destinationViewController;
    
    controller.place = self.places[[(UIButton *)sender tag]];
    
}

- (IBAction)unwindToMap:(UIStoryboardSegue*)sender
{
}

@end
