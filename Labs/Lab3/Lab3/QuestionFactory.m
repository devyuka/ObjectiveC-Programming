#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion"];
        
    }
    return self;
}

- (Question *) generateRandomQuestion {
    int random = arc4random_uniform((int)[_questionSubclassNames count]);
    NSString *pickedClassName = _questionSubclassNames[random];
    return [[NSClassFromString(pickedClassName) alloc]init];
}

@end
