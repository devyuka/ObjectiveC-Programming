#import <Foundation/Foundation.h>
#import "PaymentGetaway.h"

@interface PaypalPaymentService : NSObject <PaymentDelegate>

-(void) processPaymentAmount: (NSInteger) totalPayment;
-(BOOL) canProcessPayment;

@end

