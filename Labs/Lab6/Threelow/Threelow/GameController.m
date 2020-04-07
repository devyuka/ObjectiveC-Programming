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
    Dice *selectedDice =[_diceArray objectAtIndex:(NSInteger) index];
    
    if([_heldDiceArray containsObject:selectedDice]){
        [_heldDiceArray removeObject:selectedDice];
    }else{
        [_heldDiceArray addObject:selectedDice];
    }
}

-(void) resetDice{
    [_heldDiceArray removeAllObjects];
}

@end

