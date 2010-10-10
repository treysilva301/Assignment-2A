//
//  PolygonShape.m
//  Assignment 2A
//
//  Created by Baldemar Silva III on 10/7/10.
//  Copyright 2010 The University of Texas at Austin. All rights reserved.
//

#import "PolygonShape.h"


@implementation PolygonShape

	@synthesize numberOfSides;
	@synthesize minimumNumberOfSides;
	@synthesize maximumNumberOfSides;

- (id)init
{

	numberOfSides = 5;
	minimumNumberOfSides = 3;
	maximumNumberOfSides = 10;
	return self;
}

- (id)initWithNumberOfSides:(int)sides minimumNumberOfSides:(int)min maximumNumberOfSides:(int)max
{
	[self setMinimumNumberOfSides: min];
	[self setMaximumNumberOfSides: max];
	numberOfSides = sides;
	return self;
}

- (void)setNumberOfSides:(int)value
{
	if (value < minimumNumberOfSides) {
		NSLog(@"Invalid number of sides: %d is less than the minimum of %d allowed.", value, minimumNumberOfSides);
	}
	else if (value > maximumNumberOfSides){
		NSLog(@"Invalid number of sides: %d is greater than the maximum of %d allowed.", value, maximumNumberOfSides);
	}
	else {
		numberOfSides = value;
	}

}

- (void)setMinimumNumberOfSides:(int)value
{
	if (value < 3) {
		NSLog(@"Invalid number of sides: %d is less than the minimum of %d allowed.", value, 2);
	}
	else {
		minimumNumberOfSides = value;
	}

}

- (void)setMaximumNumberOfSides:(int)value
{
	if (value > 12) {
		NSLog(@"Invalid number of sides: %d is greater than the maximum of %d allowed.", value, 12);
	}
	else {
		maximumNumberOfSides = value;
	}

}

- (float) angleInDegrees
{
	return ((numberOfSides - 2) * 180)/numberOfSides;
}

- (float) angleInRadians
{
	return [self angleInDegrees]*(M_PI/180);
}

-(NSString *) name
{
	NSArray *sideSpecification = [NSArray arrayWithObjects: 
								  @"Triangle", @"Square", @"Pentagon", 
								  @"Hexagon", @"Heptagon", @"Octagon", 
								  @"Enneagon", @"Decagon",@"Hendecagon", 
								  @"Dodecagon", nil];
	
	return [sideSpecification objectAtIndex:(numberOfSides-3)];
}

-(void) description
{
	NSLog(@"Hello, I am a %d-sided polygon (aka a %@) with angles of %d degrees (%d radians).", 
		  numberOfSides, [self name], [self angleInDegrees], [self angleInRadians]);
}

-(void) dealloc
{
	NSLog(@"Dealloc has been used.");
	
	[super dealloc];
}

@end
