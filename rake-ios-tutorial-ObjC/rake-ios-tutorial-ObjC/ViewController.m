//
//  ViewController.m
//  rake-ios-tutorial-ObjC
//
//  Created by ssonghey on 2020/07/06.
//  Copyright © 2020 SK Planet. All rights reserved.
//

#import "ViewController.h"
#import "Rake/Rake.h"
#import "DiRakeClientTestIOsSentinelShuttle.h"

@interface ViewController ()
@property (strong, nonatomic) Rake *rake;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.rake = [Rake sharedInstance];
    NSLog(@"rake Version %@",[self.rake libVersion]);
}

- (IBAction)onButtonTrackClick:(id)sender {
    DiRakeClientTestIOsSentinelShuttle* shuttle = [[DiRakeClientTestIOsSentinelShuttle alloc] init];
    [shuttle ab_test_group:@"A"];
    [self.rake track: [shuttle toNSDictionary]];
    NSLog(@"Track Clicked");
}

- (IBAction)onButtonFlushClick:(id)sender {
    [self.rake flush];
    NSLog(@"Flush Clicked");
}

@end
