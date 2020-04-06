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
        
        while (TRUE) {
            
            printf("'roll' to roll the dice\n");
            
            char str[10];
            fgets (str, 10, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
                if([inputString isEqualToString:@"roll"]){
                    for(Dice *dice in diceArray){
                        [dice randomizeValue];
                    }
                }
                for(Dice *dice in diceArray){
                    NSLog(@"%ld", (long)dice.currentValue);
                }
                
            }
        
    }
    return 0;
}
