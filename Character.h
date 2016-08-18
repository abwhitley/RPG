//
//  Character.h
//  RPG
//
//  Created by Austins Work on 8/18/16.
//  Copyright © 2016 AustinsIronYard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Character : NSObject{
    
}

@property (nonatomic) NSString *name;

@property (nonatomic) NSString *classType;

-(instancetype)initWithPlayerName:(NSString *) name
                        classType:(NSString *)classType NS_DESIGNATED_INITIALIZER;

@end
