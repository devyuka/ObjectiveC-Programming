#import <Foundation/Foundation.h>
#import "PaymentGetaway.h"
#import "AmazonPaymentService.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger randomDollar = (NSInteger) arc4random_uniform(1000) + 100;
        NSLog(@"\nThank you for shopping at Acme.com\nYour total today is $%d\nPlease select your payment method:\n1: Paypal, 2: Stripe, 3: Amazon, 4: Apple", (int)randomDollar);

        char str[10];
        fgets (str, 10, stdin);

        NSInteger userInput = [[[NSString alloc] initWithUTF8String:str] integerValue];
        NSLog(@"input %ld", userInput);
        
        id delegete;
        
        switch (userInput) {
            case 1:
                delegete = [PaypalPaymentService new];
                break;
            case 2:
                delegete = [StripePaymentService new];
                break;
            case 3:
                delegete = [AmazonPaymentService new];
                break;
            case 4:
                delegete = [ApplePaymentService new];
                break;
            default:
                break;
        }
    
        PaymentGetaway *paymentGetaway = [PaymentGetaway new];
        paymentGetaway.delegate = delegete;
        [paymentGetaway processPaymentAmount:randomDollar];

    }
    return 0;
}
