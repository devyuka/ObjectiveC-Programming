#import "ManagerB.h"

@implementation ManagerB

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    return true;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return true;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza{
    NSLog(@"Enjoy the pizza!");
    [_deliveryService deliverPizza:pizza];
}

@end
