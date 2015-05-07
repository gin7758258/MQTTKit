//
//  MQTTLog.h
//  MQTTKit
//
//  Created by 范亮彬 on 15/5/7.
//  Copyright (c) 2015年 Jeff Mesnil. All rights reserved.
//

#import <Foundation/Foundation.h>

FOUNDATION_EXTERN int MQTTLogSwitch;

FOUNDATION_EXPORT void setMQTTLogSwitch(int isLog);

FOUNDATION_EXPORT void MQTTLog(NSString *format, ...);
