#import <Foundation/Foundation.h>

@class Question;

@interface QuestionFactory : NSObject

@property(nonatomic, strong) NSArray *questionSubclassNames;

- (Question *) generateRandomQuestion;

@end
