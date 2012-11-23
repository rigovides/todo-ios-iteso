//
//  AddToDoViewController.m
//  dodo
//
//  Created by Rigoberto Vides on 11/22/12.
//  Copyright (c) 2012 Wowzer. All rights reserved.
//

#import "AddToDoViewController.h"
#import "MasterViewController.h"

@interface AddToDoViewController ()

@end

@implementation AddToDoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated
{
    [self.toDoContentTextView becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doneButtonAction:(id)sender
{
    
    id vc = self.presentingViewController;
    
    
    if([vc isKindOfClass:[UINavigationController class]])
    {
        UINavigationController *navController = (UINavigationController *)vc;
        
        MasterViewController *masterController = (MasterViewController *)[navController.viewControllers objectAtIndex:0];
        
        [masterController addNewToDo:self.toDoContentTextView.text];
    }
    
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

@end
