#import <Foundation/Foundation.h>
#import "PaymentGetaway.h"

@interface AmazonPaymentService : NSObject <PaymentDelegate>

-(void) processPaymentAmount: (NSInteger) totalPayment;
-(BOOL) canProcessPayment;

@end
