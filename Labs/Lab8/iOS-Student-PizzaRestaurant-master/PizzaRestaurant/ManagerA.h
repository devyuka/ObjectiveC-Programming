#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "DeliveryService.h"

@interface ManagerA : NSObject <KitchenDelegate>

@property DeliveryService *deliveryService;

-(void)kitchenDidMakePizza:(Pizza *)pizza;

@end
