//
//  ViewController.m
//  ios-zadanie2
//
//  Created by Maciek on 09/11/2021.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
 if([segue.identifier isEqualToString:@"sendSurnameSegue"])
 {
     SecondViewController *controller = ( SecondViewController *) segue.destinationViewController;
     controller.surname=self.inputField2.text;
     controller.delegate = self;
 }
    
}

- (void) addItemViewController:(SecondViewController *) controller didFinishEnteringItem:(NSString *) item {
    NSLog(@"This was returned from SecondViewController %@", item);
    self.inputField2.text = item;
}

-(IBAction)enter {
    
    NSString *yourName = self.inputField.text;
    NSString *yourSurname = self.inputField2.text;
    NSString *myName = @"Maciek";
    NSString *message;
    if ([yourName length] == 0) {
     yourName = @"World";
    }
    if ([yourName isEqualToString:myName]) {
     message = [NSString stringWithFormat:@"Hello %@! We have the same name :)", yourName];
    }else {
     message = [NSString stringWithFormat:@"Hello %@!", yourName];
    }
    self.messageLabel.text = message;
    
}



@end
