#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self randomizeValue];
        _held = false;
    }
    return self;
}

- (void) randomizeValue{
    _currentValue = (NSInteger) arc4random_uniform(6) + 1;
}

-(NSString *) convertToUnicodeSymbol{
    switch (_currentValue) {
        case 1:
            if(_held){
                return @"[⚀]";
            }else{
                return @"⚀";
            };
            break;
        case 2:
            if(_held){
                return @"[⚁]";
            }else{
                return @"⚁";
            };
            break;
        case 3:
            if(_held){
                return @"[⚂]";
            }else{
                return @"⚂";
            };
            break;
        case 4:
            if(_held){
                return @"[⚃]";
            }else{
                return @"⚃";
            };
            break;
        case 5:
            if(_held){
                return @"[⚄]";
            }else{
                return @"⚄";
            };
            break;
        case 6:
            if(_held){
                return @"[⚅]";
            }else{
                return @"⚅";
            };
            break;
            
        default:
            break;
    }
    
    return NULL;
}

@end
