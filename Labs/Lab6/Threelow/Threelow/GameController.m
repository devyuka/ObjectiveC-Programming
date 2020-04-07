#import "GameController.h"
#import "Dice.h"

@implementation GameController

-(instancetype) initWithDiceArray:(NSArray *) diceArray {
    self = [super init];
    if (self) {
        _diceArray = diceArray;
        _heldDiceArray = [NSMutableArray arrayWithCapacity:6];
    
    }
    return self;
}

-(void) holdDie:(int) index{
    [_heldDiceArray addObject:[_diceArray objectAtIndex:(NSInteger) index]];
}

@end

