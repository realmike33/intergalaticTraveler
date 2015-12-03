//
//  RootViewController.m
//  intergalaticTraveler
//
//  Created by Michael Moss on 10/19/15.
//  Copyright © 2015 mobile. All rights reserved.
//

#import "RootViewController.h"
#import "VacationViewController.h"

@interface RootViewController ()
@property (weak, nonatomic) IBOutlet UILabel *worldGreeting;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.worldGreeting.text = @"Ground control to Major Tom";
}
- (IBAction)redDwardButtonPressed:(UIButton *)sender {
    self.worldGreeting.text = @"Ground control to Red Dwarf";
}
- (IBAction)blueStarButtonPressed:(UIButton *)sender {
    self.worldGreeting.text = @"Ground control to Blue Star";
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender
{
    VacationViewController *destination = segue.destinationViewController;
    destination.title = sender.currentTitle;
    if([segue.identifier isEqualToString:@"blueSegue"]){
        destination.imageName = @"blue_star.png";
    } else {
        destination.imageName = @"red_dwarf.png";
    }
}

@end
