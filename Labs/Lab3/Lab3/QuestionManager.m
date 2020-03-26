#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray new];
    }
    return self;
}

- (NSString *) timeOutput {
    NSInteger totalTime = 0;
    for(id object in _questions){
        totalTime += [object answerTime];
    }
    
    NSInteger aveTime = totalTime / [_questions count];
    return [NSString stringWithFormat: @"total time: %ds, average time: %ds", (int) totalTime, (int) aveTime];
}

@end
