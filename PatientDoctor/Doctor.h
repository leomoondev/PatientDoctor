//
//  Doctor.h
//  PatientDoctor
//
//  Created by Hyung Jip Moon on 2017-02-09.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject

@property NSString* name;
@property NSString* specialization;

@property NSMutableSet *keepAcceptedPatients;

- (instancetype)initWithName:(NSString *)name initWithSpecialization:(NSString *)specialization;


- (BOOL) canAcceptPatient;
- (Patient *) acceptPatient;
- (void) trackAcceptedPatients;


@end
