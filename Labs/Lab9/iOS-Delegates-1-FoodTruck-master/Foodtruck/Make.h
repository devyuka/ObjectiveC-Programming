#import <Foundation/Foundation.h>
#import "FoodTruck.h"

@interface Make : NSObject <FoodTruckDelegate>

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food;

@end
