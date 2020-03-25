#import "InputHandler.h"

@implementation InputHandler

+ (NSString *) handleInput {
    char inputChars[255];
    char *result = fgets(inputChars, 255, stdin);
    
    if(result != NULL){
        return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }else{
        return NULL;
    }
}

@end
