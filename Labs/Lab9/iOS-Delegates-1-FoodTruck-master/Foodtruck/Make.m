#import "Make.h"

@implementation Make

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food{
    if([food isEqualToString:@"bao"]){
        return 50.0;
    }
    return 200.0;
}

@end
