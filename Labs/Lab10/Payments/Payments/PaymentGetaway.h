#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

-(void) processPaymentAmount: (NSInteger) totalPayment;
-(BOOL) canProcessPayment;
 
@end

@interface PaymentGetaway : NSObject

@property(nonatomic, weak) id<PaymentDelegate> delegate;

-(void) processPaymentAmount: (NSInteger) totalPayment;

@end
