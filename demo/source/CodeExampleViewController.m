//
//  CodeExampleViewController.m
//  CustomNavbarBackButton
//
//  Created by Дмитрий Калашников on 19/11/13.
//  Copyright (c) 2013 Дмитрий Калашников. All rights reserved.
//

#import "CodeExampleViewController.h"
#import "DKBackBarButtonItem.h"

@interface CodeExampleViewController ()

@end

@implementation CodeExampleViewController

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
    
    DKBackBarButtonItem *item = [[DKBackBarButtonItem alloc] init];
    [item setTitle:@""];
    [_navItem setLeftBarButtonItem:item];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
