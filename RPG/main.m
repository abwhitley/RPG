//
//  main.m
//  RPG
//
//  Created by Austins Work on 8/18/16.
//  Copyright © 2016 AustinsIronYard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"
#import <limits.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int errorCode = 0;
        char name[100] = "\0";
        fpurge(stdin);
        printf("Enter your name: ");
        scanf("%[^\n]s", name);
        
        
        

        
        Character *player = [[Character alloc]initWithPlayerName: @(name)
                                                       classType: classType];
        
        //player.nameLength(name);
        NSLog(@"%@", [player name]);
        NSLog(@"%@", [player classType]);
    }
    return 0;
}

