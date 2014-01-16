//
//  PolygonShape.h
//  viei_A2
//
//  Created by P & C on 1/19/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PolygonShape : UIView {
	int numberOfSides;
	int minNumOfSides;
	int maxNumOfSides;
	float angleDeg;
	float angleRad;
	NSString *name;
}

-(id)initWithNumberOfSides:(int)sides 
			 minNumOfSides:(int)minSides 
			 maxNumOfSides:(int)maxSides;
-(id)init;

-(void)setNumberOfSides:(int)sides;
-(void)setMinNumOfSides:(int)minSides;
-(void)setMaxNumOfSides:(int)maxSides;
-(void)polyDesc;
-(NSString *)name;
-(float)angleDeg;
-(float)angleRad;


@property (nonatomic) int numberOfSides;
@property (nonatomic) int minNumOfSides;
@property (nonatomic) int maxNumOfSides;
@property (nonatomic, readonly) float angleDeg;
@property (nonatomic, readonly) float angleRad;
@property (nonatomic, readonly) NSString *name;

@end
