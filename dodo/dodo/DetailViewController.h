//
//  DetailViewController.h
//  dodo
//
//  Created by Rigoberto Vides on 11/9/12.
//  Copyright (c) 2012 Wowzer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
