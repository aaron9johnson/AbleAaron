//
//  main.m
//  WordEffects
//
//  Created by Aaron Johnson on 2017-10-02.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        char inputChars[255];
        printf("input a string: ");
        fgets(inputChars, 255, stdin);
        printf("your string is %s\n", inputChars);
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        NSLog(@"Input was: %@", inputString);
        
    }
    return 0;
}
