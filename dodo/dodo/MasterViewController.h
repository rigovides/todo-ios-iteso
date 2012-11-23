//
//  MasterViewController.h
//  dodo
//
//  Created by Rigoberto Vides on 11/9/12.
//  Copyright (c) 2012 Wowzer. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;


- (IBAction)addToDoButtonAction:(id)sender;

- (void)addNewToDo:(id)newToDo;
- (void)deleteToDo:(NSManagedObject *)toDo;

@end
