//
//  ViewController.m
//  TaskToComplete
//
//  Created by Mahesh Reddy on 4/21/14.
//  Copyright (c) 2014 TaskToComplete. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIButton *foodCourtBtn;
@property (strong, nonatomic) IBOutlet UIButton *atmBtn;
@property (strong, nonatomic) IBOutlet UIButton *groceryStoreBtn;
@property (strong, nonatomic) IBOutlet UIButton *unknownBtn;
@property (strong, nonatomic) IBOutlet UIButton *giftShopBtn;
@property (strong, nonatomic) IBOutlet UIButton *cookerBtn;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	self.foodCourtBtn.backgroundColor = [UIColor colorWithRed:0.0f green:51.0f blue:51.0f alpha:0.5f];
	self.atmBtn.backgroundColor = [UIColor colorWithRed:0.0f green:76.0f blue:153.0f alpha:0.5f];

	self.groceryStoreBtn.backgroundColor = [UIColor colorWithRed:0.0f green:76.0f blue:153.0f alpha:0.5f];

	self.unknownBtn.backgroundColor = [UIColor colorWithRed:0.0f green:76.0f blue:153.0f alpha:0.5f];

	self.giftShopBtn.backgroundColor = [UIColor colorWithRed:0.0f green:76.0f blue:153.0f alpha:0.5f];

	self.cookerBtn.backgroundColor = [UIColor colorWithRed:0.0f green:76.0f blue:153.0f alpha:0.5f];
}

-(void)viewDidLayoutSubviews
{
	//iPhone Code
	if([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone){
		NSLog(@"iPhone");
		if([[UIScreen mainScreen] bounds].size.height == 568.0f){
			//iPhone 4-inth device
			[self changeDirectionBtnXposition:240.0f button:self.foodCourtBtn];
			[self changeDirectionBtnXposition:240.0f button:self.atmBtn];
			[self changeDirectionBtnXposition:240.0f button:self.groceryStoreBtn];
			[self changeDirectionBtnXposition:240.0f button:self.unknownBtn];
			[self changeDirectionBtnXposition:240.0f button:self.giftShopBtn];
			[self changeDirectionBtnXposition:240.0f button:self.cookerBtn];
		}
		else {
			//iPhone 3.5-inth device
		}
	}
	//iPad Code
	else {
		NSLog(@"iPad");
	}
}

-(void)changeDirectionBtnXposition:(CGFloat)xPosition button:(UIButton *)dirctionBtn
{
	CGRect dirctionBtnFrame = dirctionBtn.frame;
	dirctionBtnFrame.origin.x  = xPosition;
	dirctionBtn.frame = dirctionBtnFrame;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)directionAction:(UIButton *)sender
{
	if(sender.tag == 1){
	[[[UIAlertView alloc]initWithTitle:@"DirectionBoard" message:@"WOW..." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil]show];
	}
}

@end
