//
//  DetailViewController.m
//  dodo
//
//  Created by Rigoberto Vides on 11/9/12.
//  Copyright (c) 2012 Wowzer. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem valueForKey:@"text"];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Class messages
- (IBAction)deleteToDoButtonAction:(id)sender
{
    MasterViewController *masterController = (MasterViewController *)[self.navigationController.viewControllers objectAtIndex:0];
    [masterController deleteToDo:self.detailItem];
    
}

@end
