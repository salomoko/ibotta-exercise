// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Retailer.m instead.

#import "_Retailer.h"

const struct RetailerAttributes RetailerAttributes = {
	.iconURL = @"iconURL",
	.name = @"name",
	.serverID = @"serverID",
};

@implementation RetailerID
@end

@implementation _Retailer

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Retailer" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Retailer";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Retailer" inManagedObjectContext:moc_];
}

- (RetailerID*)objectID {
	return (RetailerID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"serverIDValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"serverID"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic iconURL;

@dynamic name;

@dynamic serverID;

- (int32_t)serverIDValue {
	NSNumber *result = [self serverID];
	return [result intValue];
}

- (void)setServerIDValue:(int32_t)value_ {
	[self setServerID:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveServerIDValue {
	NSNumber *result = [self primitiveServerID];
	return [result intValue];
}

- (void)setPrimitiveServerIDValue:(int32_t)value_ {
	[self setPrimitiveServerID:[NSNumber numberWithInt:value_]];
}

+ (NSArray*)fetchAllRetailers:(NSManagedObjectContext*)moc_ {
	NSError *error = nil;
	NSArray *result = [self fetchAllRetailers:moc_ error:&error];
	if (error) {
#ifdef NSAppKitVersionNumber10_0
		[NSApp presentError:error];
#else
		NSLog(@"error: %@", error);
#endif
	}
	return result;
}
+ (NSArray*)fetchAllRetailers:(NSManagedObjectContext*)moc_ error:(NSError**)error_ {
	NSParameterAssert(moc_);
	NSError *error = nil;

	NSManagedObjectModel *model = [[moc_ persistentStoreCoordinator] managedObjectModel];

	NSDictionary *substitutionVariables = [NSDictionary dictionary];

	NSFetchRequest *fetchRequest = [model fetchRequestFromTemplateWithName:@"allRetailers"
													 substitutionVariables:substitutionVariables];
	NSAssert(fetchRequest, @"Can't find fetch request named \"allRetailers\".");

	NSArray *result = [moc_ executeFetchRequest:fetchRequest error:&error];
	if (error_) *error_ = error;
	return result;
}

+ (id)fetchOneRetailerWithServerID:(NSManagedObjectContext*)moc_ serverID:(NSNumber*)serverID_ {
	NSError *error = nil;
	id result = [self fetchOneRetailerWithServerID:moc_ serverID:serverID_ error:&error];
	if (error) {
#ifdef NSAppKitVersionNumber10_0
		[NSApp presentError:error];
#else
		NSLog(@"error: %@", error);
#endif
	}
	return result;
}
+ (id)fetchOneRetailerWithServerID:(NSManagedObjectContext*)moc_ serverID:(NSNumber*)serverID_ error:(NSError**)error_ {
	NSParameterAssert(moc_);
	NSError *error = nil;

	NSManagedObjectModel *model = [[moc_ persistentStoreCoordinator] managedObjectModel];

	NSDictionary *substitutionVariables = [NSDictionary dictionaryWithObjectsAndKeys:

														serverID_, @"serverID",

														nil];

	NSFetchRequest *fetchRequest = [model fetchRequestFromTemplateWithName:@"oneRetailerWithServerID"
													 substitutionVariables:substitutionVariables];
	NSAssert(fetchRequest, @"Can't find fetch request named \"oneRetailerWithServerID\".");

	id result = nil;
	NSArray *results = [moc_ executeFetchRequest:fetchRequest error:&error];

	if (!error) {
		switch ([results count]) {
			case 0:
				//	Nothing found matching the fetch request. That's cool, though: we'll just return nil.
				break;
			case 1:
				result = [results objectAtIndex:0];
				break;
			default:
				NSLog(@"WARN fetch request oneRetailerWithServerID: 0 or 1 objects expected, %lu found (substitutionVariables:%@, results:%@)",
					(unsigned long)[results count],
					substitutionVariables,
					results);
		}
	}

	if (error_) *error_ = error;
	return result;
}

@end

