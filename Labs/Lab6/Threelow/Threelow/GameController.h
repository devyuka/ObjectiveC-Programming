#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property(nonatomic, strong) NSArray *diceArray;
@property(nonatomic, strong) NSMutableArray *heldDiceArray;

-(instancetype) initWithDiceArray:(NSArray *) diceArray;

-(void) holdDie:(int) index;

@end
