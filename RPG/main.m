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
NSString *getClassTypeStringFromUser();
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char name[100] = "\0";
        fpurge(stdin);
        printf("Enter your name: ");
        scanf("%[^\n]s", name);
        NSString *choice = getClassTypeStringFromUser();
        
        

        
        Character *player = [[Character alloc]initWithPlayerName: @(name)
                                                       classType: choice];
        
        //player.nameLength(name);
        NSLog(@"Your name is %@", [player name]);
        NSLog(@"You've chosen the class type of %@", [player classType]);
    }
    return 0;
}

NSString *getClassTypeStringFromUser() {
    rpgClasses classChosen = ClassNull;
    
    int errorCode = 0;
    while((errorCode != 1) ||
          (classChosen < ClassFirst ) || (classChosen > ClassLast)){
        fpurge(stdin);
        printf("Please Enter: \n");
        printf("    %d: for Knight", ClassKnight);
        printf("    %d: for Assassin", ClassAssassin);
        printf("    %d: for Mage", ClassMage);
        errorCode = scanf("%d", &classChosen);
    }
    
    
    switch (classChosen) {
        case ClassKnight: {
            return @"Knight";
        }
        case ClassAssassin: {
            return @"Assassin";
        }
        case ClassMage: {
            return @"Mage";
        }
        default:{
            return NULL;
        }
    }
    
}

