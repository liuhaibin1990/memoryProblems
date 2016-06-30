//
//  BlockViewController.m
//  memoryProblems
//
//  Created by Ocean on 6/30/16.
//  Copyright © 2016 Ocean. All rights reserved.
//

#import "BlockViewController.h"


typedef void(^simpleBlock)(void);

@interface BlockViewController ()


@property (nonatomic,copy) simpleBlock simpleBlock;

@property (nonatomic,copy) NSString *string;

@end

@implementation BlockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    __weak typeof(self) weakself = self;
    
    self.simpleBlock = ^(void){
        NSLog(@"simlple block");
        weakself.string = @"block";
    };
    self.simpleBlock();
    
}

-(void)dealloc{
    NSLog(@"block dealloc");
}


@end
