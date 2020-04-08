#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

-(void) processPaymentAmount: (NSInteger) totalPayment{
    NSLog(@"Amazon processed amount $%d", (int)totalPayment);
}

-(BOOL) canProcessPayment{
    return arc4random_uniform(2) == 1;
}

@end
