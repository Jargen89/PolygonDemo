//
//  PolygonShape.m
//  viei_A2
//
//  Created by P & C on 1/19/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "PolygonShape.h"	


@implementation PolygonShape

-(id)initWithNumberOfSides:(int)sides 
			 minNumOfSides:(int)minSides 
			 maxNumOfSides:(int)maxSides;{
	self = [super init];
	
	[self setNumberOfSides:sides];
	[self setMinNumOfSides:minSides];
	[self setMaxNumOfSides:maxSides];
	
	return self;
}

- (id) init {
	self = [super init];
	
	if(self){
		numberOfSides = 5;
		minNumOfSides = 3;
		maxNumOfSides = 9;
	}
	return self;
}

-(float)angleDeg{
	return (180 * (numberOfSides - 2)) / numberOfSides;
}

-(float)angleRad{
	return (((180 * (numberOfSides - 2)) / numberOfSides)*2*M_PI)/360;
}
			
-(NSString *)name{
	switch (numberOfSides) {
		case 3:
			name = @"Triangle";
			break;
		case 4:
			name = @"Square";
			break;
		case 5:
			name = @"Pentagon";
			break;
		case 6:
			name = @"Hexagon";
			break;
		case 7:
			name = @"Heptagon";
			break;
		case 8:
			name = @"Octagon";
			break;
		case 9:
			name = @"Nonagon";
			break;
		case 10:
			name = @"Decagon";
			break;
		case 11:
			name = @"Hendecagon";
			break;
		case 12:
			name = @"Dodecagon";
			break;
		default:
			name = @"Invalid Shape";
			break;
	}
	return name;
}

-(void)polyDesc{
	NSLog(@"Hello I am a %d sided polygon (a %@) with angles of %.2f degrees (%.2f radians).",numberOfSides,[self name],[self angleDeg],[self angleRad]);
}

- (void) setNumberOfSides:(int)sides {
	if (sides <= maxNumOfSides && sides >= minNumOfSides){
		numberOfSides = sides;
	}else{
		NSLog(@"The number of sides should be between %d and %d",minNumOfSides, maxNumOfSides);
	}
}
- (void) setMinNumOfSides:(int)minSides {
	if(minSides < maxNumOfSides){
	   minNumOfSides = minSides;
	}else{
		NSLog(@"The minimum number of sides should be between 3 and %d", maxNumOfSides);
	}
}
- (void) setMaxNumOfSides:(int)maxSides {
	if(maxSides > minNumOfSides){
		maxNumOfSides = maxSides;
	}else{
		NSLog(@"The maximum number of sides should be between %d and 12", minNumOfSides);
	}
}

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code.
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code.
}
*/

- (void)dealloc {
    [super dealloc];
}

@synthesize numberOfSides;
@synthesize minNumOfSides;
@synthesize maxNumOfSides;

@end
