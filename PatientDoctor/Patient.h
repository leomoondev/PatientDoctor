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

@property (copy) NSString *patientName;
@property (nonatomic, assign) NSInteger patientAge;
@property (nonatomic, assign) BOOL hasValidCareCard;
@property (copy) NSString *patientSymptom;

- (instancetype)initWithName:(NSString *)patientName initWithAge:(int)patientAge initWithCareCard:(BOOL)hasValidCareCard initWithSymptom:(NSString*)patientSymptom;
- (void)visitedDoctor:(Doctor *)aDoctor;
- (void)requestMedication:(Doctor *)aDoctor;

@end




