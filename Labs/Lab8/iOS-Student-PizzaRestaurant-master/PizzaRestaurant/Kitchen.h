//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@class Kitchen;
@class DeliveryService;
@protocol KitchenDelegate <NSObject>

@property DeliveryService *deliveryService;

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
@optional
-(void)kitchenDidMakePizza:(Pizza *)pizza;
    
@end

@interface Kitchen : NSObject

@property(nonatomic, weak) id<KitchenDelegate> delegate;

-(Pizza *)makePizzaWithSize:(NSString *)size commandWords:(NSArray *)commandWords;

@end


