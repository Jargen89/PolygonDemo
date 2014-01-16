//
//  Controller.h
//
//  Created by P & C on 1/19/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "PolygonShape.h"
#import "PolygonView.h"

@interface Controller:NSObject{
    IBOutlet UIButton *decreaseButton;
    IBOutlet UIButton *increaseButton;
    IBOutlet UILabel *numberOfSidesLabel;
	IBOutlet UILabel *shapeName;
	IBOutlet UILabel *shapeAngle;
	IBOutlet PolygonShape *polygon;
	IBOutlet PolygonView *polygonView123;
	
}
- (IBAction)decrease:(id)sender;
- (IBAction)increase:(id)sender;
-(void)updateInterface;
@end
