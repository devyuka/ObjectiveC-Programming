#import "DeliveryService.h"

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _deliveredPizzas = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)deliverPizza:(Pizza *)pizza{
    _pizzaToDeiver = pizza;
    [_deliveredPizzas addObject:_pizzaToDeiver];
    DeliveryCar *car = [DeliveryCar new];
    [car deliverPizza:_pizzaToDeiver];
}

@end
