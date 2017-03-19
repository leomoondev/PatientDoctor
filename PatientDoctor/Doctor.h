//
//  Doctor.h
//  PatientDoctor
//
//  Created by Hyung Jip Moon on 2017-02-09.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@class Patient;

@interface Doctor : NSObject

@property (copy) NSString *doctorName;
@property (copy) NSString *specialization;
@property (nonatomic, strong) NSMutableArray *keepAcceptedPatients;
@property (nonatomic,strong) NSDictionary *collectionOfprescriptions;

- (instancetype)initWithName:(NSString *)doctorName initWithSpecialization:(NSString *)specialization;
- (void)visitDoctor: (Patient *) aPatient;
- (void)acceptPatient:(Patient *) aPatient;
- (NSString *)createPrescription:(NSString *)patientSymptom;

@end
