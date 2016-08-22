//
//  Character.h
//  RPG
//
//  Created by Austins Work on 8/18/16.
//  Copyright © 2016 AustinsIronYard. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum rpgClasses{
    ClassKnight = 1,
    ClassAssassin,
    ClassMage,
    ClassNull = INT_MIN,
    ClassFirst = ClassKnight,
    ClassLast = ClassMage
}rpgClasses;
rpgClasses classChosen = ClassNull;


@interface Character : NSObject{
    
}

@property (nonatomic) NSString *name;

@property(nonatomic) NSString *classType;

-(instancetype)initWithPlayerName:(NSString *) name
                        classType:(NSString *)classType NS_DESIGNATED_INITIALIZER;

    









@end
