//
//  SecondViewController.h
//  ios-zadanie2
//
//  Created by Maciek on 09/11/2021.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class SecondViewController;
@protocol SecondViewControllerDelegate <NSObject>
-(void) addItemViewController:(SecondViewController *) controller didFinishEnteringItem: (NSString*) item;
@end

@interface SecondViewController : UIViewController
@property (nonatomic, weak) IBOutlet UITextField *modifiedSurnameTextField;
@property NSString *surname;
@property (nonatomic, weak) id <SecondViewControllerDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
