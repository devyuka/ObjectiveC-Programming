#import "ApplePaymentService.h"

@implementation ApplePaymentService

-(void) processPaymentAmount: (NSInteger) totalPayment{
    NSLog(@"Apple processed amount $%d", (int)totalPayment);
}

-(BOOL) canProcessPayment{
    return arc4random_uniform(2) == 1;
}

@end
