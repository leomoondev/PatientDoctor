//
//  Patient.m
//  PatientDoctor
//
//  Created by Hyung Jip Moon on 2017-02-09.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "Patient.h"

@implementation Patient {
    
    SharedInstance *sharedInstance;
}

- (instancetype)initWithName:(NSString *)patientName initWithAge:(int)patientAge initWithCareCard:(BOOL)hasValidCareCard initWithSymptom:(NSString*)patientSymptom{
    
    if (self = [super init]) {
        
        _patientName = patientName;
        _patientAge = patientAge;
        _hasValidCareCard = hasValidCareCard;
        _patientSymptom = patientSymptom;
        
        NSLog(@"%@ has %@.", _patientName, _patientSymptom);
    }
    return self;
}

- (void)visitedDoctor:(Doctor *)aDoctor {
    
    NSLog(@"%@ visited %@!", _patientName, aDoctor.doctorName);
    [aDoctor visitDoctor:self];
}

- (void)requestMedication:(Doctor *)aDoctor {
    
    if (_hasValidCareCard == YES){
        
        NSLog(@"%@ requested medication.", _patientName);
        NSString *currentPrescription = [aDoctor createPrescription:_patientSymptom];
        
        if ([sharedInstance.previousPrescriptions containsObject:currentPrescription]) {
            NSLog(@"%@ has had same medication in the past.",_patientName);
            
        }
        
        else  {
            
            NSLog(@"%@ received %@!",_patientName, currentPrescription);
            [sharedInstance.previousPrescriptions addObject:currentPrescription];
            
        }
    }
    
    else {
        
        NSLog(@"%@ does not have permission to receive medication!", _patientName);
    }
}
@end




