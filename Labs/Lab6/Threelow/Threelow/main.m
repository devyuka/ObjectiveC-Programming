#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dice *dice1 = [Dice new];
        Dice *dice2 = [Dice new];
        Dice *dice3 = [Dice new];
        Dice *dice4 = [Dice new];
        Dice *dice5 = [Dice new];
        NSArray *diceArray = @[dice1, dice2, dice3, dice4, dice5];
        for(Dice *dice in diceArray){
            NSLog(@"%ld", (long)dice.currentValue);
        }
    }
    return 0;
}
