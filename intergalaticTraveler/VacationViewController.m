//
//  VacationViewController.m
//  intergalaticTraveler
//
//  Created by Michael Moss on 10/19/15.
//  Copyright © 2015 mobile. All rights reserved.
//

#import "VacationViewController.h"

@interface VacationViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation VacationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageView.image = [UIImage imageNamed:self.imageName];
}

@end
