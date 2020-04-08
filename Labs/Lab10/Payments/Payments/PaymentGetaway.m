#import "PaymentGetaway.h"

@implementation PaymentGetaway

-(void) processPaymentAmount: (NSInteger) totalPayment{
    if([self.delegate canProcessPayment]){
        [self.delegate processPaymentAmount:totalPayment];
    }else{
        NSLog(@"Sorry, your payment cannot be processed.");
    }
}

@end
