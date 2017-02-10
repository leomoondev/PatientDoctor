//
//  Patient.m
//  PatientDoctor
//
//  Created by Hyung Jip Moon on 2017-02-09.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name initWithAge:(int)age initWithCareCard:(BOOL)hasValidCareCard {
    
    if (self = [super init]) {
        _name = name;
        _age = age;
        _hasValidCareCard = hasValidCareCard;
    }
    return self;
}


@end
