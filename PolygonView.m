//
//  PolygonView.m
//  viei_A2
//
//  Created by P & C on 1/19/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "PolygonView.h"


@implementation PolygonView
@synthesize polygon;

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code.
    }
    return self;
}

+(NSArray *)pointsForPolygonInRect:(CGRect)rect numOfSides:(int)numOfSides{
	CGPoint center = CGPointMake(rect.size.width/ 2.0, rect.size.height/2.0);
	float radius = 0.9*center.x;
	NSMutableArray *result = [NSMutableArray array];
	float angle = (2.0*M_PI)/numOfSides;
	float exteriorAngle = M_PI - angle;
	float rotationDelta = angle - (0.5*exteriorAngle);
	
	for (int currentAngle = 0; currentAngle < numOfSides; currentAngle++) {
		float newAngle = (angle*currentAngle) - rotationDelta;
		float curX = cos(newAngle)*radius;
		float curY = sin(newAngle)*radius;
		[result addObject:[NSValue valueWithCGPoint:CGPointMake(center.x + curX,center.y + curY)]];
	}
	return result;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
-(void) drawRect:(CGRect)rect {
	
    NSArray *temp = [PolygonView pointsForPolygonInRect:rect numOfSides:[polygon numberOfSides]];
	//NSLog(@"%@",temp);
	CGContextRef context = UIGraphicsGetCurrentContext();
	[[UIColor grayColor] set];
	UIRectFill([self bounds]);
	CGContextBeginPath(context);
	CGPoint pt = [[temp objectAtIndex:0] CGPointValue];
	CGContextMoveToPoint(context, pt.x , pt.y);
	for(int i = 1; i < [temp count]; i++){
		pt = [[temp objectAtIndex:i] CGPointValue];
		CGContextAddLineToPoint(context,pt.x , pt.y);
	}
	CGContextClosePath(context);
	[[UIColor redColor]setFill];
	[[UIColor blackColor]setStroke];
	CGContextDrawPath(context, kCGPathFillStroke);
	
}


- (void)dealloc {
    [super dealloc];
}


@end
