//
//  ViewController.m
//  live555-simple-demo-4-iOS
//
//  Created by ZhaoliangGuo on 16/7/17.
//  Copyright © 2016年 ZhaoliangGuo. All rights reserved.
//

#import "ViewController.h"

#include "liveMedia.hh"
#include "BasicUsageEnvironment.hh"
#include "testRTSPClient.h"

extern char eventLoopWatchVariable;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self PlayRTSP];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//int PlayRTSP(int argc, char** argv)
- (int) PlayRTSP
{
    // Begin by setting up our usage environment:
    TaskScheduler* scheduler = BasicTaskScheduler::createNew();
    UsageEnvironment* env = BasicUsageEnvironment::createNew(*scheduler);
    
    // We need at least one "rtsp://" URL argument:
//    if (argc < 2) {
//        usage(*env, argv[0]);
//        return 1;
//    }
    
    // There are argc-1 URLs: argv[1] through argv[argc-1].  Open and start streaming each one:
//    for (int i = 1; i <= argc-1; ++i) {
//        openURL(*env, argv[0], argv[i]);
//    }
    
    // Change the rtspURL to a valid rtsp url.
    char rtspURL[512] = "rtsp://192.168.1.101:8554/test.mkv";
    
    openURL(*env, "openRTSP", rtspURL);

    // All subsequent activity takes place within the event loop:
    env->taskScheduler().doEventLoop(&eventLoopWatchVariable);
    // This function call does not return, unless, at some point in time, "eventLoopWatchVariable" gets set to something non-zero.
    
    return 0;
    
    // If you choose to continue the application past this point (i.e., if you comment out the "return 0;" statement above),
    // and if you don't intend to do anything more with the "TaskScheduler" and "UsageEnvironment" objects,
    // then you can also reclaim the (small) memory used by these objects by uncommenting the following code:
    /*
     env->reclaim(); env = NULL;
     delete scheduler; scheduler = NULL;
     */
}

@end
