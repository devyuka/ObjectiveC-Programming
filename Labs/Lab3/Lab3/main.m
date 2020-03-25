#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        NSLog(@"MATH QUIZ!");
        ScoreKeeper *scoreKeeper = [ScoreKeeper new];
        
        while(gameOn){
            AdditionQuestion *addtionQuestion = [AdditionQuestion new];
            
            NSLog(@"%@", addtionQuestion.question);
            NSString * strInput = [InputHandler handleInput];
            
            if([strInput isEqualToString:@"quit"]){
                gameOn = NO;
                continue;
            }
            
            if(strInput.intValue == addtionQuestion.answer){
                NSLog(@"Right!");
                scoreKeeper.rightScore++;
            }else{
                NSLog(@"Wrong!");
                scoreKeeper.wrongScore++;
            };
            
            [scoreKeeper showScore];
        }
    }
}
