#import "ManagerA.h"

@implementation ManagerA

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    if([toppings containsObject:@"anchovies"]){
        NSLog(@"anchovies was included. I will not make a pizza.");
        return false;
    };
    
    return true;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return false;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza{
    NSLog(@"Pizza was made.");
    [_deliveryService deliverPizza:pizza];
}

@end
