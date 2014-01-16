//
//  Controller.m
//
//  Created by P & C on 1/19/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "Controller.h"

@implementation Controller
- (IBAction)decrease:(id)sender {
	int numSides = [polygon numberOfSides];
	if(numSides >= [polygon minNumOfSides]){
		numSides--;
		[polygon setNumberOfSides:numSides];
	}
	[self updateInterface];
	[polygon polyDesc];
}

- (IBAction)increase:(id)sender {
	int numSides = [polygon numberOfSides];
	if(numSides <= [polygon maxNumOfSides]){
		numSides++;
		[polygon setNumberOfSides:numSides];
	}
	[self updateInterface];
	[polygon polyDesc];
}

-(void)awakeFromNib{
	[polygon setMinNumOfSides:3];
	[polygon setMaxNumOfSides:12];
	[polygon setNumberOfSides:numberOfSidesLabel.text.integerValue];
	[polygon polyDesc];
}

-(void)updateInterface{
	
	if([polygon numberOfSides] == [polygon minNumOfSides]){
		decreaseButton.enabled = NO;
	}else{
		decreaseButton.enabled = YES;
	}		
	
	if([polygon numberOfSides] == [polygon maxNumOfSides]){
		increaseButton.enabled = NO;
	}else{
		increaseButton.enabled = YES;
	}
	shapeName.text = [NSString stringWithFormat:@"%@",[polygon name]];
	shapeAngle.text = [NSString stringWithFormat:@"%.2f",[polygon angleDeg]];

	numberOfSidesLabel.text = [NSString stringWithFormat:@"%d",[polygon numberOfSides]];
	[polygonView123 setNeedsDisplay];
}
@end
