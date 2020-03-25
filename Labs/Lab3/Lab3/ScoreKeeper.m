#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init
{
    self = [super init];
    if (self) {
        _rightScore = 0;
        _wrongScore = 0;
    }
    return self;
}

- (void) showScore {
    
    NSLog(@"score: %ld right, %ld wrong ---- %ld%%", _rightScore, _wrongScore,
          (_rightScore == 0) ? 0 : (long)((float) _rightScore / (_rightScore + _wrongScore) * 100));
}

@end
