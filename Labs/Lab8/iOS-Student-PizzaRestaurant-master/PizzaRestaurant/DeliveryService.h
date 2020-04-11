#import <Foundation/Foundation.h>
#import "DeliveryCar.h"

@class Pizza;
@interface DeliveryService : NSObject

@property Pizza *pizzaToDeiver;
@property(nonatomic, strong) NSMutableArray *deliveredPizzas;

-(void)deliverPizza:(Pizza *)pizza;

@end
