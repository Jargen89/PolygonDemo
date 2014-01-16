//
//  PolygonView.h
//  viei_A2
//
//  Created by P & C on 1/19/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PolygonShape.h"


@interface PolygonView : UIView {

	IBOutlet PolygonShape *polygon;
	
} 
+(NSArray *)pointsForPolygonInRect:(CGRect)rect numOfSides:(int)numOfSides;

@property (retain) IBOutlet PolygonShape *polygon;
@end
