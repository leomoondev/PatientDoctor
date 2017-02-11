//
//  main.m
//  PatientDoctor
//
//  Created by Hyung Jip Moon on 2017-02-09.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // insert code here...
        Doctor *doctor1 = [[Doctor alloc] initWithName:@"Doctor JOHN" initWithSpecialization:@"DENTIST"];
        Doctor *doctor2 = [[Doctor alloc] initWithName:@"Doctor ABRHAM" initWithSpecialization:@"OPTIMETRIST"];
        Patient *patient1 = [[Patient alloc] initWithName:@"WILSON LEE" initWithAge:34 initWithCareCard:true initWithSymptom:@"SORE_EYE"];
        Patient *patient2 = [[Patient alloc] initWithName:@"MOHAMMED PARKER" initWithAge:34 initWithCareCard:false initWithSymptom:@"TOOTHACHE"];
        
        [patient1 visitedDoctor:doctor2];
        [patient2 visitedDoctor:doctor1];
        
        [patient1 requestMedication:doctor2];
        [patient2 requestMedication:doctor1];
        
    }
    return 0;
}
