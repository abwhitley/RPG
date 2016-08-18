//
//  main.m
//  RPG
//
//  Created by Austins Work on 8/18/16.
//  Copyright © 2016 AustinsIronYard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Character *player = [[Character alloc]initWithPlayerName: @"John Doe"
                                                       classType:@"Mage"];
        
        NSLog(@"%@", [player name]);
        NSLog(@"%@", [player classType]);
    }
    return 0;
}
