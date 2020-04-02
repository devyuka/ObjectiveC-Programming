#import "Pizza.h"

@implementation Pizza

-(instancetype) initWithSize:(NSString *) size andToppings:(NSArray *) toppings{
    self = [super init];
    if (self) {
        self.size = size;
        self.toppings = toppings;
        self.pizzaSize = [self convertPizzaSize:size];
    
    }
    return self;
}

+(Pizza *) largePepperoni{
    NSString *size = @"large";
    NSArray *toppings = [NSArray arrayWithObject:@"pepparoni"];
    Pizza *pizza = [[Pizza alloc]initWithSize:size andToppings:toppings];
    return pizza;
}

+(Pizza *) meatLoversWithSize: (NSString *) size{
    NSArray *toppings = [NSArray arrayWithObject:@[@"meat", @"meat", @"meat"]];
    Pizza *pizza = [[Pizza alloc]initWithSize:size andToppings:toppings];
    return pizza;
}

- (PizzaSize) convertPizzaSize: (NSString *) size{
            size = [size lowercaseString];
            if([size isEqualToString:@"small"]){
                return SMALL;
            }else if([size isEqualToString:@"medium"]){
                return MEDIUM;
            }else if([size isEqualToString:@"large"]){
                return LARGE;
            }else{
                _size = @"small";
                return SMALL;
            }
    return SMALL;
}

-(NSString *)size{
    return _size;
}

-(NSArray *)toppings{
    return _toppings;
}

@end
