#import "StripePaymentService.h"

@implementation StripePaymentService

-(void) processPaymentAmount: (NSInteger) totalPayment{
    NSLog(@"Stripe processed amount $%d", (int)totalPayment);
}

-(BOOL) canProcessPayment{
    return arc4random_uniform(2) == 1;
}

@end
