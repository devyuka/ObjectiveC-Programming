#import <Foundation/Foundation.h>

@interface Question : NSObject

@property(nonatomic, strong) NSString *question;
@property(nonatomic, assign) NSInteger answer;
@property(nonatomic, strong) NSDate *startTime;
@property(nonatomic, strong) NSDate *endTime;
@property(nonatomic, assign) NSInteger rightValue;
@property(nonatomic, assign) NSInteger leftValue;

- (NSInteger) answer;
- (NSTimeInterval) answerTime;
- (void) generateQuestion;

@end
