#import "GameController.h"
#import "Dice.h"

@implementation GameController

-(instancetype) initWithDiceArray:(NSArray *) diceArray {
    self = [super init];
    if (self) {
        _diceArray = diceArray;
        _heldDiceArray = [NSMutableArray arrayWithCapacity:6];
        _totalScore = 0;
        _remainingRolls = 5;
    }
    return self;
}

-(void) holdDie:(int) index{
    Dice *selectedDice =[_diceArray objectAtIndex:(NSInteger) index];
    
    if(selectedDice.held){
        [_heldDiceArray removeObject:selectedDice];
    }else{
        [_heldDiceArray addObject:selectedDice];
    }
    
    selectedDice.held = !selectedDice.held;
}

-(void) resetDice{
    [_heldDiceArray removeAllObjects];
    _remainingRolls = 0;
}

-(void) holdAllDice{
    for(Dice *dice in _diceArray){
        if(!dice.held){
            [_heldDiceArray addObject:dice];
            dice.held = true;
        }
    }
}

-(NSInteger) calcScore{
    _totalScore = 0;
    
    for(Dice *dice in _heldDiceArray){
        _totalScore += dice.currentValue;
    }
    return _totalScore;
}

-(void) print{
    NSMutableString *allDice = [NSMutableString string];
    
    for(Dice *dice in _diceArray){
        [allDice appendString:[dice convertToUnicodeSymbol]];
        [allDice appendString:@" "];
    }
  
    NSLog(@"Remaining Rolls: %d", (int) _remainingRolls);
    if([self isGameOver]){NSLog(@"Game Over");};
    NSLog(@"-------------------");
    NSLog(@"-- Current Dice  --");
    NSLog(@"%@", allDice);
    NSLog(@"");
    NSLog(@"--  Total Score  --");
    NSLog(@"Score : %d", (int) [self calcScore]);
    NSLog(@"-------------------");
}

-(BOOL) isGameOver{
    return _remainingRolls == 0;
}

@end

