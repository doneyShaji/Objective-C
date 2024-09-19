//
//  ViewController.h
//  TextProperties
//
//  Created by P10 on 18/09/24.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *labelText;

- (IBAction)colourButton:(id)sender;
- (IBAction)backgroundButton:(id)sender;
- (IBAction)fontButton:(id)sender;
- (IBAction)shadowButton:(id)sender;
- (IBAction)shadowColourButton:(id)sender;
- (IBAction)centerButton:(id)sender;
- (IBAction)leftButton:(id)sender;
- (IBAction)rightButton:(id)sender;

@end

