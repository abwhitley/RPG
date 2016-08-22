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



-(instancetype)init{
    return [self initWithPlayerName:@"UnNammed"
                classType:@"UnKnown"];
}

@end
