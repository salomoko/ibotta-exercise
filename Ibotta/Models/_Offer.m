// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Offer.m instead.

#import "_Offer.h"

const struct OfferAttributes OfferAttributes = {
	.amount = @"amount",
	.desc = @"desc",
	.iconURL = @"iconURL",
	.name = @"name",
	.serverID = @"serverID",
	.totalLikes = @"totalLikes",
};

const struct OfferRelationships OfferRelationships = {
	.retailers = @"retailers",
};

@implementation OfferID
@end

@implementation _Offer

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Offer" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Offer";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Offer" inManagedObjectContext:moc_];
}

- (OfferID*)objectID {
	return (OfferID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"serverIDValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"serverID"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"totalLikesValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"totalLikes"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic amount;

@dynamic desc;

@dynamic iconURL;

@dynamic name;

@dynamic serverID;

- (int32_t)serverIDValue {
	NSNumber *result = [self serverID];
	return [result intValue];
}

- (void)setServerIDValue:(int32_t)value_ {
	[self setServerID:@(value_)];
}

- (int32_t)primitiveServerIDValue {
	NSNumber *result = [self primitiveServerID];
	return [result intValue];
}

- (void)setPrimitiveServerIDValue:(int32_t)value_ {
	[self setPrimitiveServerID:@(value_)];
}

@dynamic totalLikes;

- (int32_t)totalLikesValue {
	NSNumber *result = [self totalLikes];
	return [result intValue];
}

- (void)setTotalLikesValue:(int32_t)value_ {
	[self setTotalLikes:@(value_)];
}

- (int32_t)primitiveTotalLikesValue {
	NSNumber *result = [self primitiveTotalLikes];
	return [result intValue];
}

- (void)setPrimitiveTotalLikesValue:(int32_t)value_ {
	[self setPrimitiveTotalLikes:@(value_)];
}

@dynamic retailers;

- (NSMutableSet*)retailersSet {
	[self willAccessValueForKey:@"retailers"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"retailers"];

	[self didAccessValueForKey:@"retailers"];
	return result;
}

+ (id)fetchOneOfferWithServerID:(NSManagedObjectContext*)moc_ serverID:(NSNumber*)serverID_ {
	NSError *error = nil;
	id result = [self fetchOneOfferWithServerID:moc_ serverID:serverID_ error:&error];
	if (error) {
#ifdef NSAppKitVersionNumber10_0
		[NSApp presentError:error];
#else
		NSLog(@"error: %@", error);
#endif
	}
	return result;
}
+ (id)fetchOneOfferWithServerID:(NSManagedObjectContext*)moc_ serverID:(NSNumber*)serverID_ error:(NSError**)error_ {
	NSParameterAssert(moc_);
	NSError *error = nil;

	NSManagedObjectModel *model = [[moc_ persistentStoreCoordinator] managedObjectModel];

	NSDictionary *substitutionVariables = [NSDictionary dictionaryWithObjectsAndKeys:

														serverID_, @"serverID",

														nil];

	NSFetchRequest *fetchRequest = [model fetchRequestFromTemplateWithName:@"oneOfferWithServerID"
													 substitutionVariables:substitutionVariables];
	NSAssert(fetchRequest, @"Can't find fetch request named \"oneOfferWithServerID\".");

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
				NSLog(@"WARN fetch request oneOfferWithServerID: 0 or 1 objects expected, %lu found (substitutionVariables:%@, results:%@)",
					(unsigned long)[results count],
					substitutionVariables,
					results);
		}
	}

	if (error_) *error_ = error;
	return result;
}

+ (NSArray*)fetchAllOffers:(NSManagedObjectContext*)moc_ {
	NSError *error = nil;
	NSArray *result = [self fetchAllOffers:moc_ error:&error];
	if (error) {
#ifdef NSAppKitVersionNumber10_0
		[NSApp presentError:error];
#else
		NSLog(@"error: %@", error);
#endif
	}
	return result;
}
+ (NSArray*)fetchAllOffers:(NSManagedObjectContext*)moc_ error:(NSError**)error_ {
	NSParameterAssert(moc_);
	NSError *error = nil;

	NSManagedObjectModel *model = [[moc_ persistentStoreCoordinator] managedObjectModel];

	NSDictionary *substitutionVariables = [NSDictionary dictionary];

	NSFetchRequest *fetchRequest = [model fetchRequestFromTemplateWithName:@"allOffers"
													 substitutionVariables:substitutionVariables];
	NSAssert(fetchRequest, @"Can't find fetch request named \"allOffers\".");

	NSArray *result = [moc_ executeFetchRequest:fetchRequest error:&error];
	if (error_) *error_ = error;
	return result;
}

@end

