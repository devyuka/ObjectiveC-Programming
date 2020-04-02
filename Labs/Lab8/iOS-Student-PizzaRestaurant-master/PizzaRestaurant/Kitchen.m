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

    Pizza *pizza;
    
    if([size isEqualToString:@"pepperoni"]){
        pizza = [Pizza largePepperoni];
    }else if([commandWords count] <= 2 && [commandWords[1] isEqualToString:@"meat"]){
        pizza = [Pizza meatLoversWithSize:size];
    }else{
        NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1, (int)[commandWords count] - 1)];
        pizza = [[Pizza alloc] initWithSize:size andToppings: toppings];
    }
    
    return pizza;
}

@end
