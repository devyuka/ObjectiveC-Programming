#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        NSLog(@"MATH QUIZ!\n\n\n");
        NSString *right = @"Right!";
        NSString *wrong = @"Wrong!";
        ScoreKeeper *scoreKeeper = [ScoreKeeper new];
        InputHandler *inputHandler = [InputHandler new];
        QuestionManager *questionManager = [QuestionManager new];
        QuestionFactory *questionFactory = [QuestionFactory new];
        
        while(gameOn){
            Question *question = [questionFactory generateRandomQuestion];
            [questionManager.questions addObject: question];
            
            NSLog(@"%@", question.question);
            NSString * strInput = [inputHandler handleInput];
            
            if([strInput isEqualToString:@"quit"]){
                gameOn = NO;
                continue;
            }
            
            if(strInput.intValue == question.answer){
                NSLog(@"%@", right);
                scoreKeeper.rightScore++;
            }else{
                NSLog(@"%@", wrong);
                scoreKeeper.wrongScore++;
            };
            
            [scoreKeeper showScore];
            [question answerTime];
            NSLog(@"%@", [questionManager timeOutput]);
        }
    }
}
