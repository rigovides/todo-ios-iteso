//
//  DetailViewController.h
//  dodo
//
//  Created by Rigoberto Vides on 11/9/12.
//  Copyright (c) 2012 Wowzer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MasterViewController.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSManagedObject *detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

- (IBAction)deleteToDoButtonAction:(id)sender;

@end
