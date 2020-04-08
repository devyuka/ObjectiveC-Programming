#import <Foundation/Foundation.h>
#import "PaymentGetaway.h"

@interface StripePaymentService : NSObject <PaymentDelegate>

-(void) processPaymentAmount: (NSInteger) totalPayment;
-(BOOL) canProcessPayment;

@end
