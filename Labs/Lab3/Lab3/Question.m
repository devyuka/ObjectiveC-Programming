#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        _rightValue = arc4random_uniform(90) + 10;
        _leftValue = arc4random_uniform(90) + 10;
        _startTime = [NSDate date];
    }
    return self;
}

- (void) generateQuestion {}

// overriding getter
- (NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval) answerTime {
    return ([_endTime timeIntervalSinceDate:_startTime]);
}

@end
