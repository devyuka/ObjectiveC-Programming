#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Box *box1 = [[Box alloc] initWithHeight:10 andWidth:10 andLength:5]; //500
        Box *box2 = [[Box alloc] initWithHeight:10 andWidth:1 andLength:5];  //50
        NSLog(@"%.2f", [box1 calcVolume]);
        NSLog(@"%.2f", [box2 calcVolume]);
        NSLog(@"%d", [box1 howManyBoxesCanFit:box2]);
        NSLog(@"%d", [box2 howManyBoxesCanFit:box1]);
    }
    return 0;
}
