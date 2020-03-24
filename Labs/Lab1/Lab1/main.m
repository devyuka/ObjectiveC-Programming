#import <Foundation/Foundation.h>

NSString *getUserInput(int maxLength, NSString *prompt){
    if(maxLength < 1){
        maxLength= 255;
    }
    
    NSLog(@"%@", prompt);
    char inputChars[maxLength];
    char *result = fgets(inputChars, maxLength, stdin);
    
    if (result != NULL) {
        return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    
    return NULL;

}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while(YES){
            NSString *strInput = getUserInput(255, @"\nEnter your String: ('q' to quit)");
            NSLog(@"%hhd", ([strInput isEqualToString:@"q"]));
            
            if([strInput isEqualToString:@"q"]){
                NSLog(@"Quit!");
                break;
            };
            
            while(YES){
            NSString *option = getUserInput(10, @"\nChoose one of the following option: \n1. UpperCase\n2. LowerCase\n3. Numberize\n4. Canadianize\n5. Respond\n6. Do-Space-It\n7. WordCount\n8. Remove punctuations\n9. Done\n");
                
              if([option isEqualToString: @"1"]){
                    NSLog(@"%@", [strInput uppercaseString]);
                }else if([option isEqualToString: @"2"]){
                    NSLog(@"%@", [strInput lowercaseString]);
                }else if([option isEqualToString: @"3"]){
                    
                    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
                    NSNumber *number = [formatter numberFromString:strInput];
                    
                    if(number != nil){
                        NSLog(@"%ld", [number integerValue]);
                    }else{
                        NSLog(@"%@", @"Input cannot be converted to Integer");
                    }
     
                }else if([option isEqualToString: @"4"]){
                    NSLog(@"%@", [strInput stringByAppendingString:@", eh?"]);
                }else if([option isEqualToString: @"5"]){
                    if([strInput characterAtIndex:[strInput length] - 1] == '?'){
                        NSLog(@"%@", @"I don't know");
                    }else if([strInput characterAtIndex:[strInput length] - 1] == '!'){
                        NSLog(@"%@", @"Whoa, calm down!");
                    }else{
                         NSLog(@"%@", @"OK!");
                    }
                   
                }else if([option isEqualToString: @"6"]){
                    NSLog(@"%@", [strInput stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
                }else if([option isEqualToString: @"7"]){
                    NSCharacterSet *separators = [NSCharacterSet whitespaceAndNewlineCharacterSet];
                    NSArray *words = [strInput componentsSeparatedByCharactersInSet:separators];
                    NSIndexSet *separatorIndexes = [words indexesOfObjectsPassingTest:^BOOL(id obj, NSUInteger idx, BOOL *stop) {
                         return [obj isEqualToString:@""];
                     }];
                    
                    NSLog(@"%ld", [words count] - [separatorIndexes count]);
                }else if([option isEqualToString: @"8"]){
                    NSCharacterSet *trim =[NSCharacterSet characterSetWithCharactersInString:@":;.,"];
                    NSString *res = [[strInput componentsSeparatedByCharactersInSet: trim] componentsJoinedByString:@""];
                       NSLog(@"%@", res);
                }else if([option isEqualToString: @"9"]){
                    break;
                }else{
                    NSLog(@"Hello World!");
                }
            }
            
        }
        
    }
    return 0;
}
