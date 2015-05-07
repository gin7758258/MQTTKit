//
//  MQTTLog.m
//  MQTTKit
//
//  Created by 范亮彬 on 15/5/7.
//  Copyright (c) 2015年 Jeff Mesnil. All rights reserved.
//

#import "MQTTLog.h"

int MQTTLogSwitch = 0;

void setMQTTLogSwitch(int isLog) {
  MQTTLogSwitch = isLog;
}

void MQTTLog(NSString *format, ...) {
  if (MQTTLogSwitch == 0) {
    return;
  }
  //如果format为nil
  if (!format) {
    va_list args;
    va_start(args, format);
    //只取第一个参数
    void *str = nil;
    while ((str = va_arg(args, void*))) {
      if ([NSString stringWithUTF8String:str]) {
        format = @"%s";
        break;
      }
      else {
        format = @"%@";
        break;
      }
    }
    va_end(args);
  }
  NSString *hrdFormat = [[NSString alloc] initWithFormat:@"[MQTTLOG]#####%@#####",format];
  va_list args;
  va_start(args, format);
  NSLogv(hrdFormat, args);
  va_end(args);
}