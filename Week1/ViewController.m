//
//  ViewController.m
//  Week1
//
//  Created by Jason Chua on 6/4/14.
//  Copyright (c) 2014 Jason Chua. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)onTap:(id)sender;

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Post";
        [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.2824 green:0.3725 blue:0.6353 alpha:1.0000]];
        
//NSForegroundColorAttributeName = [UIColor whiteColor]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIBarButtonItem *shareItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:nil];
    
    
    NSArray *actionButtonItems = @[shareItem];
    self.navigationItem.rightBarButtonItems = actionButtonItems;
    
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithTitle:@"<" style:UIBarButtonItemStylePlain target:self action:nil];
    self.navigationItem.leftBarButtonItem = leftButton;
    
    [[UIBarButtonItem appearance] setTintColor:[UIColor whiteColor]];

    [[UINavigationBar appearance] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys:
                                                           [UIColor colorWithRed:245.0/255.0 green:245.0/255.0 blue:245.0/255.0 alpha:1.0], NSForegroundColorAttributeName,
                                                           [UIFont fontWithName:@"HelveticaNeue-Regular" size:15.0], NSFontAttributeName, nil]];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
    
}


@end
