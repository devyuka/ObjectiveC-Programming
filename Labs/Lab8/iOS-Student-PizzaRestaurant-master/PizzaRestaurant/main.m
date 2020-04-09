//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"


NSString *getStringPizzaSize(PizzaSize pizzaSize){
    switch (pizzaSize) {
        case SMALL:
            return @"small";
            break;
            
        case MEDIUM:
            return @"medium";
            break;
        
        case LARGE:
            return @"large";
            break;
            
        default:
            return @"small";
            break;
    }
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSString *size = commandWords[0];
        
            // And then send some message to the kitchen...
            Pizza *pizza = [restaurantKitchen makePizzaWithSize:size commandWords:commandWords];
            NSLog(@"size: %@, toppings: %@", getStringPizzaSize(pizza.size), pizza.toppings);
        }

    }
    return 0;
}

