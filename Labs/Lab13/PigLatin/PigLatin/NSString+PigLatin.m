#import "NSString+PigLatin.h"
#import <AppKit/AppKit.h>

@implementation NSString (PigLatin)

-(NSString *) convertToPigLatin: (NSString *)input{
    
    NSMutableArray *wordsArray = [[input componentsSeparatedByString:@" "] mutableCopy];
    
    NSArray *vowels = @[@"a", @"i", @"e", @"o", @"u"];
    NSArray *clusters = @[@"Ch", @"Sh", @"Sm", @"St", @"Th", @"Ps", @"Ph", @"Pl", @"Gl"];
    
    for (int i = 0; i < [wordsArray count]; i++){
        NSString *word = wordsArray[i];
        if([vowels containsObject:[word substringToIndex:1]]){
            continue;
        }else if([clusters containsObject:[word substringWithRange:NSMakeRange(0, 2)]]){
            [wordsArray replaceObjectAtIndex:i withObject: [self convertToPigLatinUtil:word range:2]];
        }else{
            [wordsArray replaceObjectAtIndex:i withObject: [self convertToPigLatinUtil:word range:1]];
        }
    }
    
    NSString *convertedWords = [wordsArray componentsJoinedByString:@" "];
    return convertedWords;
}

-(NSString *)convertToPigLatinUtil: (NSString *)word range:(int)range{
    NSMutableString *convertedWord = [[word substringWithRange:NSMakeRange(range, [word length] - range)] mutableCopy];
    
    [convertedWord appendString:[word substringWithRange:NSMakeRange(0, range)]];
    [convertedWord appendString:@"ay"];
    return [convertedWord capitalizedString];
}

@end
