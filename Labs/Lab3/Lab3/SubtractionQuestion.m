#import "SubtractionQuestion.h"
#import "Question.h"

@implementation SubtractionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion {
    NSString *generatedQuestion = [NSString stringWithFormat:@"%ld - %ld ?", super.rightValue, super.leftValue];
    super.question = generatedQuestion;
    super.answer = super.rightValue - super.leftValue;
}

@end
