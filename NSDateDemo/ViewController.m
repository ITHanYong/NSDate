//
//  ViewController.m
//  NSDateDemo
//
//  Created by HanYong on 2020/5/25.
//  Copyright © 2020 HanYong. All rights reserved.
//

#import "ViewController.h"
#import "NSDate+CF.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSDate *date1 = [NSDate stringToDate:@"12:10" formaterMode:NSDateFormaterModeTimeDemotion];
    NSLog(@"%@",date1);
    
    NSDate *date2 = [NSDate stringToDate:@"2020-06-15 10:10:40" formaterMode:NSDateFormaterModeStandard];
    
    NSDate *nowDate = [NSDate date];
    
    NSString *now12 = [NSDate dateToString:nowDate formaterMode:NSDateFormaterModeTimeStandard12];
    NSString *now24 = [NSDate dateToString:nowDate formaterMode:NSDateFormaterModeTimeStandard];
    
    NSDictionary *dict = nowDate.lunarCalendar;
    
    NSLog(@"%@",nowDate.lunarDate);
    
    [NSDate compareOneDateString:@"2020-05-25 10:10:40" withAnotherDateString:@"2020-05-26 10:10:40"];
    
    NSInteger week = [NSDate date].weekday;
    if (date2.isYesterday) {
        NSLog(@"昨天");
    }
}


@end
