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
        
        while (![gameController isGameOver]) {

            printf("'roll' to roll the dice\n");
            printf("'hold' to hold a dice\n");
            printf("'reset' to un-hold all dice\n");
            
            char str[10];
            fgets (str, 10, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
                if([inputString isEqualToString:@"roll"]){
                    for(Dice *dice in gameController.diceArray){
                        if(!dice.held){
                            [dice randomizeValue];
                        }
                     
                    }
                    
                    gameController.remainingRolls -= 1;
                    
                    if([gameController isGameOver]){
                        [gameController holdAllDice];
                    }
                    
                }else if([inputString isEqualToString:@"hold"]){
                    
                    NSLog(@"Enter the number of the die:");
                    int number;
                    scanf("%d", &number);
                    
                    if(number < 1 || number > 5){
                        NSLog(@"The number is invalid.");
                        fflush(stdin);
                        continue;
                    }
                    
                    [gameController holdDie:number - 1];
                    fflush(stdin);
                    
                }else if([inputString isEqualToString:@"reset"]){
                    [gameController resetDice];
                }else{
                    NSLog(@"Enter a valid input.");
                    continue;
                }
            
            [gameController print];
            
        }
    }
    return 0;
}
