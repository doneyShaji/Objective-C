//
//  ViewController.m
//  TextProperties
//
//  Created by P10 on 18/09/24.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)rightButton:(id)sender {
    self.labelText.textAlignment = NSTextAlignmentRight;
}

- (IBAction)leftButton:(id)sender {
    self.labelText.textAlignment = NSTextAlignmentLeft;
}

- (IBAction)centerButton:(id)sender {
    self.labelText.textAlignment = NSTextAlignmentCenter;
}

- (IBAction)shadowColourButton:(id)sender {
    self.labelText.layer.shadowColor = [[UIColor blueColor] CGColor];
}

- (IBAction)shadowButton:(id)sender {
    self.labelText.layer.shadowColor = [[UIColor blackColor] CGColor];
    self.labelText.layer.shadowOpacity = 0.5;
    self.labelText.layer.shadowRadius = 2.5f;
    self.labelText.layer.shadowOffset = CGSizeMake(2, 2);
}

- (IBAction)fontButton:(id)sender {
    [self.labelText setFont:[UIFont fontWithName:@"Kefa" size: 50]];
}

- (IBAction)backgroundButton:(id)sender {
    self.labelText.backgroundColor = [UIColor systemBlueColor];
}

- (IBAction)colourButton:(id)sender {
    self.labelText.textColor = [UIColor redColor];
}
@end
