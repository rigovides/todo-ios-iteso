//
//  AddToDoViewController.h
//  dodo
//
//  Created by Rigoberto Vides on 11/22/12.
//  Copyright (c) 2012 Wowzer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddToDoViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextView *toDoContentTextView;

- (IBAction)doneButtonAction:(id)sender;

@end
