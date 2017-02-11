//
//  Patient.h
//  PatientDoctor
//
//  Created by Hyung Jip Moon on 2017-02-09.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "SharedInstance.h"

@class Doctor;

@interface Patient : NSObject

@property NSString *patientName;
@property int patientAge;
@property BOOL hasValidCareCard;
@property NSString *patientSymptom;

- (instancetype)initWithName:(NSString *)patientName initWithAge:(int)patientAge initWithCareCard:(BOOL)hasValidCareCard initWithSymptom:(NSString*)patientSymptom;
- (void)visitedDoctor:(Doctor *)aDoctor;
- (void)requestMedication:(Doctor *)aDoctor;
@end




