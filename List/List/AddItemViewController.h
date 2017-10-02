//
//  AddItemViewController.h
//  List
//
//  Created by Aaron Johnson on 2017-09-11.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol AddItemViewControllerDelegate <NSObject>

-(void)didSaveNewTodo:(NSString *)todoText;

@end

@interface AddItemViewController : UIViewController

@property (nonatomic, strong) id <AddItemViewControllerDelegate> delegate;

@property (weak, nonatomic) IBOutlet UITextField *textField;

- (IBAction)save:(id)sender;
- (IBAction)cancel:(id)sender;

@end
