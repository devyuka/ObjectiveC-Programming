#import "DivisionQuestion.h"

@implementation DivisionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion {
    super.question = [NSString stringWithFormat:@"%ld / %ld ?", super.rightValue, super.leftValue];
    super.answer = super.rightValue / super.leftValue;
}

@end
