#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject

@property(nonatomic, strong) NSMutableArray *questions;

- (NSString *) timeOutput;

@end
