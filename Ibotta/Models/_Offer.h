// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Offer.h instead.

@import CoreData;

extern const struct OfferAttributes {
	__unsafe_unretained NSString *amount;
	__unsafe_unretained NSString *desc;
	__unsafe_unretained NSString *iconURL;
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *serverID;
	__unsafe_unretained NSString *totalLikes;
} OfferAttributes;

extern const struct OfferRelationships {
	__unsafe_unretained NSString *retailer;
} OfferRelationships;

@class Retailer;

@interface OfferID : NSManagedObjectID {}
@end

@interface _Offer : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) OfferID* objectID;

@property (nonatomic, strong) NSDecimalNumber* amount;

//- (BOOL)validateAmount:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* desc;

//- (BOOL)validateDesc:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* iconURL;

//- (BOOL)validateIconURL:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* serverID;

@property (atomic) int32_t serverIDValue;
- (int32_t)serverIDValue;
- (void)setServerIDValue:(int32_t)value_;

//- (BOOL)validateServerID:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* totalLikes;

@property (atomic) int32_t totalLikesValue;
- (int32_t)totalLikesValue;
- (void)setTotalLikesValue:(int32_t)value_;

//- (BOOL)validateTotalLikes:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) Retailer *retailer;

//- (BOOL)validateRetailer:(id*)value_ error:(NSError**)error_;

+ (id)fetchOneOfferWithServerID:(NSManagedObjectContext*)moc_ serverID:(NSNumber*)serverID_ ;
+ (id)fetchOneOfferWithServerID:(NSManagedObjectContext*)moc_ serverID:(NSNumber*)serverID_ error:(NSError**)error_;

+ (NSArray*)fetchAllOffers:(NSManagedObjectContext*)moc_ ;
+ (NSArray*)fetchAllOffers:(NSManagedObjectContext*)moc_ error:(NSError**)error_;

@end

@interface _Offer (CoreDataGeneratedPrimitiveAccessors)

- (NSDecimalNumber*)primitiveAmount;
- (void)setPrimitiveAmount:(NSDecimalNumber*)value;

- (NSString*)primitiveDesc;
- (void)setPrimitiveDesc:(NSString*)value;

- (NSString*)primitiveIconURL;
- (void)setPrimitiveIconURL:(NSString*)value;

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

- (NSNumber*)primitiveServerID;
- (void)setPrimitiveServerID:(NSNumber*)value;

- (int32_t)primitiveServerIDValue;
- (void)setPrimitiveServerIDValue:(int32_t)value_;

- (NSNumber*)primitiveTotalLikes;
- (void)setPrimitiveTotalLikes:(NSNumber*)value;

- (int32_t)primitiveTotalLikesValue;
- (void)setPrimitiveTotalLikesValue:(int32_t)value_;

- (Retailer*)primitiveRetailer;
- (void)setPrimitiveRetailer:(Retailer*)value;

@end
