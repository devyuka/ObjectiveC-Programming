#import "Pizza.h"

@implementation Pizza

-(instancetype) initWithSize:(PizzaSize) size andToppings:(NSArray *) toppings{
    self = [super init];
    if (self) {
        self.size = size;
        self.toppings = toppings;
    }
    return self;
}

+(Pizza *) largePepperoni{
    PizzaSize size = [self convertPizzaSize:@"large"];
    NSArray *toppings = [NSArray arrayWithObject:@"pepparoni"];
    Pizza *pizza = [[Pizza alloc]initWithSize:size andToppings:toppings];
    return pizza;
}

+(Pizza *) meatLoversWithSize: (PizzaSize) size{
    NSArray *toppings = [NSArray arrayWithObject:@[@"meat", @"meat", @"meat"]];
    Pizza *pizza = [[Pizza alloc]initWithSize:size andToppings:toppings];
    return pizza;
}

+ (PizzaSize) convertPizzaSize: (NSString *) size{
            size = [size lowercaseString];
            if([size isEqualToString:@"small"]){
                return SMALL;
            }else if([size isEqualToString:@"medium"]){
                return MEDIUM;
            }else if([size isEqualToString:@"large"]){
                return LARGE;
            }else{
                return SMALL;
            }
    return SMALL;
}

-(NSArray *)toppings{
    return _toppings;
}

@end
