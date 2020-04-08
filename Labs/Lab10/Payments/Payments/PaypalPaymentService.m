#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

-(void) processPaymentAmount: (NSInteger) totalPayment{
    NSLog(@"Paypal processed amount $%d", (int)totalPayment);
}

-(BOOL) canProcessPayment{
    return arc4random_uniform(2) == 1;
}

@end
