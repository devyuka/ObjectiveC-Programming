#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "DeliveryService.h"


@interface ManagerB : NSObject <KitchenDelegate>

@property DeliveryService *deliveryService;

-(void)kitchenDidMakePizza:(Pizza *)pizza;

@end
