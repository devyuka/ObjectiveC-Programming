#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property(nonatomic, strong) NSArray *diceArray;
@property(nonatomic, strong) NSMutableArray *heldDiceArray;
@property NSInteger totalScore;
@property NSInteger remainingRolls;

-(instancetype) initWithDiceArray:(NSArray *) diceArray;

-(void) holdDie:(int) index;

-(void) holdAllDice;

-(void) resetDice;

-(void) print;

-(BOOL) isGameOver;

@end
