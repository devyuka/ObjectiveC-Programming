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
#import "ManagerA.h"
#import "ManagerB.h"
#import "DeliveryService.h"

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
            return @"undefined";
            break;
    }
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        ManagerA *managerA = [ManagerA new];
        ManagerB *managerB = [ManagerB new];
        DeliveryService *deliveryService = [DeliveryService new];
        managerA.deliveryService = deliveryService;
        managerB.deliveryService = deliveryService;
    
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            NSLog(@"'show' to show delivered pizzas");
            char str01[100];
            fgets (str01, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str01];
            
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was '%@'", inputString);
            
            if([inputString isEqualToString:@"show"]){
                if([deliveryService.deliveredPizzas count] != 0){
                    NSLog(@"Delivered Pizzas");
                    for(Pizza *pizza in deliveryService.deliveredPizzas){
                        NSLog(@"size: %@, toppings: %@", getStringPizzaSize(pizza.size), pizza.toppings);
                    }
                }
                continue;
            }
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSString *size = commandWords[0];
            
            NSLog(@"Choose a manager:\n1: ManagerA 2:ManagerB 3:N/A");
            char str02[10];
            fgets (str02, 10, stdin);

            NSInteger selectedManager = [[[NSString alloc] initWithUTF8String:str02] integerValue];
            
            switch (selectedManager) {
                case 1:
                    restaurantKitchen.delegate = managerA;
                    break;
                case 2:
                    restaurantKitchen.delegate = managerB;
                    break;
                case 3:
                    break;
                    
                default:
                    break;
            }
        
            // And then send some message to the kitchen...
            Pizza *pizza = [restaurantKitchen makePizzaWithSize:size commandWords:commandWords];
            NSLog(@"size: %@, toppings: %@", getStringPizzaSize(pizza.size), pizza.toppings);
        }

    }
    return 0;
}

