//
//  ViewController.m
//  Demo
//
//  Created by Ivan on 05.02.13.
//  Copyright (c) 2013 IvanZez. All rights reserved.
//

#import "ViewController.h"
#import "GCDTimer.h"

@implementation ViewController {
    GCDTimer *timer;
    int counter;
}

- (void) viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor underPageBackgroundColor];

    UILabel *label = [UILabel new];
    label.bounds = CGRectMake(0, 0, self.view.bounds.size.width - 40, 30);
    label.center = self.view.center;
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"Hello!";
    [self.view addSubview:label];

    timer = [GCDTimer scheduledTimerWithTimeInterval:1 repeats:YES block:^{
        counter++;
        label.text = [NSString stringWithFormat:@"I'm alive for %d second%@", counter, (counter == 1) ? @"" : @"s"];
    }];
}

@end
