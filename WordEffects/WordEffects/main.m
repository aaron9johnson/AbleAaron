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
        do{
        printf("Which Operation: ");
        char operation;
        fgets(&operation, 255, stdin);
        char inputChars[255];
        printf("\ninput a string: ");
        fgets(inputChars, 255, stdin);
        printf("your string is %s\n", inputChars);
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        inputString = [inputString substringToIndex:[inputString length]-1];//removes \n from end
        switch ([[NSString stringWithFormat:@"%c", operation] intValue]) {
            case 1:
                //UPPERCASE
                inputString = [inputString uppercaseString];
                break;
            case 2:
                //lowercase
                inputString = [inputString lowercaseString];
                break;
            case 3:
                //numberize
                printf("int number: %d\n", [inputString intValue]);
                break;
            case 4:
                //canadianize
                inputString = [NSString stringWithFormat:@"%@, eh?", inputString];
                break;
            case 5:
                //respond
                if(inputChars[[inputString length] - 1] == '?'){
                    inputString = @"I don't know";
                }
                if(inputChars[[inputString length] - 1] == '!'){
                    inputString = @"Whoa, calm down!";
                }
                break;
            case 6:
                //de-space-it
                inputString = [inputString stringByReplacingOccurrencesOfString:@" "
                                                 withString:@"-"];
                break;
            case 7:
                //wordCount
                printf("number of words: %lu\n", (unsigned long)[[inputString componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] count]);
                break;
            case 8:
                //punctuation Removal
                inputString = [inputString stringByReplacingOccurrencesOfString:@"!"
                                                                     withString:@""];
                inputString = [inputString stringByReplacingOccurrencesOfString:@"?"
                                                                     withString:@""];
                inputString = [inputString stringByReplacingOccurrencesOfString:@"."
                                                                     withString:@""];
                break;
                
            default:
                break;
        }
        NSLog(@"Output is: %@", inputString);
        }while(1);
    }
    return 0;
}
