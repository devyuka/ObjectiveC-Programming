#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property NSInteger currentValue;
@property BOOL held;

-(void) randomizeValue;

-(NSString *) convertToUnicodeSymbol;

@end
