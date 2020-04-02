#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString * input = @"Kale Chips";
        NSLog(@"@Converted to: %@", [input convertToPigLatin:input]);
    }
    return 0;
}
