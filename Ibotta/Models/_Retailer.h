// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Retailer.h instead.

@import CoreData;

extern const struct RetailerAttributes {
	__unsafe_unretained NSString *iconURL;
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *serverID;
} RetailerAttributes;

extern const struct RetailerRelationships {
	__unsafe_unretained NSString *offers;
} RetailerRelationships;

@class Offer;

@interface RetailerID : NSManagedObjectID {}
@end

@interface _Retailer : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) RetailerID* objectID;

@property (nonatomic, strong) NSString* iconURL;

//- (BOOL)validateIconURL:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* serverID;

@property (atomic) int32_t serverIDValue;
- (int32_t)serverIDValue;
- (void)setServerIDValue:(int32_t)value_;

//- (BOOL)validateServerID:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *offers;

- (NSMutableSet*)offersSet;

+ (id)fetchOneRetailerWithServerID:(NSManagedObjectContext*)moc_ serverID:(NSNumber*)serverID_ ;
+ (id)fetchOneRetailerWithServerID:(NSManagedObjectContext*)moc_ serverID:(NSNumber*)serverID_ error:(NSError**)error_;

+ (NSArray*)fetchAllRetailers:(NSManagedObjectContext*)moc_ ;
+ (NSArray*)fetchAllRetailers:(NSManagedObjectContext*)moc_ error:(NSError**)error_;

@end

@interface _Retailer (OffersCoreDataGeneratedAccessors)
- (void)addOffers:(NSSet*)value_;
- (void)removeOffers:(NSSet*)value_;
- (void)addOffersObject:(Offer*)value_;
- (void)removeOffersObject:(Offer*)value_;

@end

@interface _Retailer (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveIconURL;
- (void)setPrimitiveIconURL:(NSString*)value;

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

- (NSNumber*)primitiveServerID;
- (void)setPrimitiveServerID:(NSNumber*)value;

- (int32_t)primitiveServerIDValue;
- (void)setPrimitiveServerIDValue:(int32_t)value_;

- (NSMutableSet*)primitiveOffers;
- (void)setPrimitiveOffers:(NSMutableSet*)value;

@end
