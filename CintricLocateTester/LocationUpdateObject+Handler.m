//
//  LocationUpdateObject+Handler.m
//  CintricLocateTester
//
//  Created by Joel Green on 10/12/14.
//  Copyright (c) 2014 Joel Green. All rights reserved.
//

#import "LocationUpdateObject+Handler.h"

@implementation LocationUpdateObject (Handler)

+ (LocationUpdateObject *)updateObjectForLat:(float)lat lon:(float)lon inContext:(NSManagedObjectContext *)context;
{
    LocationUpdateObject *locationUpdate = [NSEntityDescription insertNewObjectForEntityForName:@"LocationUpdateObject" inManagedObjectContext:context];
    
    locationUpdate.latitude = [NSNumber numberWithDouble:lat];
    locationUpdate.longitude = [NSNumber numberWithDouble:lon];
    locationUpdate.timestamp = [NSDate date];
    
    return locationUpdate;
}

@end
