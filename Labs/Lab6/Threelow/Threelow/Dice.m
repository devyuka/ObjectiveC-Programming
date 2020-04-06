#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self randomizeValue];
    }
    return self;
}

- (void) randomizeValue{
    _currentValue = (NSInteger) arc4random_uniform(6) + 1;
}

@end
