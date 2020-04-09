//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(NSString *)size commandWords:(NSArray *)commandWords {
    PizzaSize pizzaSize = [Pizza convertPizzaSize:size];
    NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1, (int)[commandWords count] - 1)];
    Pizza *pizza;
    
    if(_delegate){
        if(![_delegate kitchen:self shouldMakePizzaOfSize:pizzaSize andToppings:toppings]){
            return nil;
        }

        if([_delegate kitchenShouldUpgradeOrder:self]){
            pizzaSize = (PizzaSize) LARGE;
        }
    }

    if([size isEqualToString:@"pepperoni"]){
        pizza = [Pizza largePepperoni];
    }else if([commandWords count] <= 2 && [commandWords[1] isEqualToString:@"meat"]){
        pizza = [Pizza meatLoversWithSize:pizzaSize];
    }else{
        pizza = [[Pizza alloc] initWithSize:pizzaSize andToppings: toppings];
    }
    
    if ([_delegate respondsToSelector:@selector(kitchenDidMakePizza:)]){
        [_delegate kitchenDidMakePizza:pizza];
    }
    
    return pizza;
}

@end
