//
//  Patient.h
//  PatientDoctor
//
//  Created by Hyung Jip Moon on 2017-02-09.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Patient : NSObject

@property NSString* name;
@property int age;
@property BOOL hasValidCareCard;

- (instancetype)initWithName:(NSString *)name initWithAge:(int)age initWithCareCard:(BOOL)hasValidCareCard;

@end
