#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dice *dice1 = [Dice new];
        Dice *dice2 = [Dice new];
        Dice *dice3 = [Dice new];
        Dice *dice4 = [Dice new];
        Dice *dice5 = [Dice new];
        NSArray *diceArray = @[dice1, dice2, dice3, dice4, dice5];
        
        GameController *gameController = [[GameController alloc] initWithDiceArray:diceArray];
        
        while (TRUE) {

            printf("'roll' to roll the dice\n");
            printf("'hold' to hold a dice\n");
            
            char str[10];
            fgets (str, 10, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
                if([inputString isEqualToString:@"roll"]){
                    for(Dice *dice in gameController.diceArray){
                        if(![gameController.heldDiceArray containsObject:dice]){
                            [dice randomizeValue];
                        }
                     
                    }
                }else if([inputString isEqualToString:@"hold"]){
                    NSLog(@"Enter the number of the die:");
                    int index;
                    scanf("%d", &index);
                    [gameController holdDie:index];
                    fflush(stdin);
                }else{
                    NSLog(@"Enter a valid input.");
                    continue;
                }
            
                for(Dice *dice in gameController.diceArray){
                    if([gameController.heldDiceArray containsObject:dice]){
                        NSLog(@"[%ld]", (long)dice.currentValue);
                    }else{
                        NSLog(@"%ld", (long)dice.currentValue);
                    }
                }
            }
    }
    return 0;
}
