#import "Box.h"

@implementation Box {
    
}

- (instancetype)initWithHeight: (float) height andWidth: (float) width andLength: (float) length
{
    self = [super init];
    if(self) {
        _height = height;
        _width = width;
        _length = length;
        
    }
    return self;
}

- (float) calcVolume {
    return self.height * self.width * self.length;
}

- (int) howManyBoxesCanFit: (Box *) box {
    float v1 = self.calcVolume;
    float v2 = box.calcVolume;
        
    return (int)floorf(v1 / v2);
}

@end
