#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSInteger randomNumL = arc4random_uniform(90) + 10;
        NSInteger randomNumR = arc4random_uniform(90) + 10;
        NSString *generatedQuestion = [NSString stringWithFormat:@"%ld + %ld ?", randomNumL, randomNumR];
        _question = generatedQuestion;
        _answer = randomNumL + randomNumR;
    }
    return self;
}

@end
