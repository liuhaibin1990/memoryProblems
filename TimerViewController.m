//
//  TimerViewController.m
//  memoryProblems
//
//  Created by Ocean on 6/30/16.
//  Copyright © 2016 Ocean. All rights reserved.
//

#import "TimerViewController.h"

@interface TimerViewController ()

@property (nonatomic,strong) NSTimer *timer;

@end

@implementation TimerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSTimer *timer = [NSTimer timerWithTimeInterval:0.5 target:self selector:@selector(timerAction) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
    self.timer = timer;
    
}


-(void)timerAction{
    NSLog(@"timer");
}

-(void)dealloc{
    NSLog(@"timerdelloc");
}
//请在控制器消失的时候调用timer释放
-(void)viewDidDisappear:(BOOL)animated{
    [self.timer invalidate];
    self.timer = nil;
}

@end
