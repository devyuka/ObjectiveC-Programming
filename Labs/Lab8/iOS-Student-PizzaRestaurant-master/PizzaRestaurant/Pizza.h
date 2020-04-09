#import <Foundation/Foundation.h>

typedef enum: NSUInteger {
    SMALL,
    MEDIUM,
    LARGE,
    UNDEFINED
} PizzaSize;

@interface Pizza : NSObject

@property(nonatomic, assign) PizzaSize size;
@property(nonatomic, strong) NSArray *toppings;

-(instancetype) initWithSize:(PizzaSize) size andToppings:(NSArray *) toppings;

+(Pizza *) largePepperoni;
+(Pizza *) meatLoversWithSize: (PizzaSize) size;
+(PizzaSize) convertPizzaSize: (NSString *) size;

@end
