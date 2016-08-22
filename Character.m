//
//  Character.m
//  RPG
//
//  Created by Austins Work on 8/18/16.
//  Copyright © 2016 AustinsIronYard. All rights reserved.
//

#import "Character.h"

@implementation Character


-(instancetype)initWithPlayerName:(NSString*) name
                        classType:(NSString *) classType{
    self = [super init];
    if (self) {
        _name = name;
        _classType = classType;
    }
    return self;
}

-(NSString *) classType{
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
            return _classType = @("Knight");
        }
        case ClassAssassin: {
            return _classType = @("Assassin");
        }
        case ClassMage: {
            return _classType = @("Mage");
        }
        default:{
            return NULL;
        }
    }
    
}



-(instancetype)init{
    return [self initWithPlayerName:@"UnNammed"
                classType:@"UnKnown"];
}

@end
