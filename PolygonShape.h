//
//  PolygonShape.h
//  Assignment 2A
//
//  Created by Baldemar Silva III on 10/7/10.
//  Copyright 2010 The University of Texas at Austin. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Foundation/Foundation.h>


@interface PolygonShape : NSObject 
{
	int numberOfSides;
	int minimumNumberOfSides;
	int maximumNumberOfSides;
}

@property int numberOfSides;
@property int minimumNumberOfSides;
@property int maximumNumberOfSides;
@property (readonly) float angleInDegrees;
@property (readonly) float angleInRadians;
@property (readonly) NSString *name;

@end
