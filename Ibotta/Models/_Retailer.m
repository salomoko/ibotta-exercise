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

@end

