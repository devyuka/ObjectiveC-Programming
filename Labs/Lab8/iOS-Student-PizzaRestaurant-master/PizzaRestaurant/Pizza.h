#import <Foundation/Foundation.h>

typedef enum: NSUInteger {
    SMALL,
    MEDIUM,
    LARGE
} PizzaSize;

@interface Pizza : NSObject

@property(nonatomic, assign) NSString *size;
@property(nonatomic, strong) NSArray *toppings;
@property(nonatomic, assign) PizzaSize pizzaSize;

-(instancetype) initWithSize:(NSString *) size andToppings:(NSArray *) toppings;
-(NSString *)size;
-(NSArray *)toppings;

+(Pizza *) largePepperoni;
+(Pizza *) meatLoversWithSize: (NSString *) size;

@end
