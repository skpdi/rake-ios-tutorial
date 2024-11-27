//
//  main.m
//  rake-ios-tutorial-ObjC
//
//  Created by 송혜영(Hyeyoung Song)/Data Infrastructure팀/SKP on 11/27/24.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
