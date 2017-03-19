//
//  Doctor.m
//  PatientDoctor
//
//  Created by Hyung Jip Moon on 2017-02-09.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor 


- (instancetype)initWithName:(NSString *)doctorName initWithSpecialization:(NSString *)specialization {
    
    if (self = [super init]) {
        
        _doctorName = doctorName;
        _specialization = specialization;
        _collectionOfprescriptions = @{ @"TOOTHACHE": @"Medication 1",
                                        @"SORE_EYE": @"Medication 2",
                                        @"HEART_DISEASE": @"Medication 3"
                                        };
        _keepAcceptedPatients = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)visitDoctor: (Patient *) aPatient {
    
    [self acceptPatient:(Patient *)aPatient];
}

- (void)acceptPatient:(Patient *) aPatient {
    
    if (aPatient.hasValidCareCard){
        
        NSLog(@"%@ has a health card. How can we help you?", aPatient.patientName);
        [_keepAcceptedPatients addObject:aPatient.patientName];
    }
    else {
        
        NSLog(@"%@ does not have a health card. We won't be able to help you.", aPatient.patientName);
    }
}

- (NSString *)createPrescription:(NSString *)patientSymptom {
    
    return [_collectionOfprescriptions objectForKey:patientSymptom];
}

@end





