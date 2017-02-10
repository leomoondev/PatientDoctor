//
//  Doctor.m
//  PatientDoctor
//
//  Created by Hyung Jip Moon on 2017-02-09.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor {
    
    Patient *patient;

}

- (instancetype)initWithName:(NSString *)name initWithSpecialization:(NSString *)specialization {
    
    if (self = [super init]) {
        
        _name = name;
        _specialization = specialization;
    }
    return self;
}

- (BOOL) canAcceptPatient {
    
    if([patient hasValidCareCard]) {
        return true;
    }
    else {
        return false;
    }
}


- (Patient *) acceptPatient {
    if([self canAcceptPatient]) {
        [_keepAcceptedPatients addObject:patient];
        return patient;
        
    }
    else {
        return nil;
    }
}

- (void) trackAcceptedPatients {
    
}

@end
