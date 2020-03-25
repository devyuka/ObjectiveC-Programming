#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property(nonatomic, assign) NSInteger rightScore;
@property(nonatomic, assign) NSInteger wrongScore;

- (void) showScore;

@end
