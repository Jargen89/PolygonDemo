//
//  AppDelegate_iPhone.h
//  viei_A2
//
//  Created by P & C on 1/19/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate_iPhone : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	
	NSMutableArray *polygons;
	
}
-(void)PrintPolygonInfo;
@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

