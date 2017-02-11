//
//  SharedInstance.h
//  PatientDoctor
//
//  Created by Hyung Jip Moon on 2017-02-10.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

@class Patient;
@class Doctor;

@interface SharedInstance : NSObject

@property NSMutableArray *previousPrescriptions;



@end


