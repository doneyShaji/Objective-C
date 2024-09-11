//
//  main.m
//  HelloWorld
//
//  Created by P10 on 09/09/24.
//

#import <Foundation/Foundation.h> // Preprocessor Commands

//@interface SampleClass : NSObject // Interface which declares a class with a method
//- (void) sampleMethod;
//@end
//
//@implementation SampleClass //Implementation of the method
//
//- (void) sampleMethod {
//    NSLog(@"Hello Sunshine, %d", sizeof(long));
//}
//@end
//
//int main() {
//    SampleClass *sampleClass = [[SampleClass alloc] init];
//    [sampleClass sampleMethod];
//    return 0;
//}


int main(void) {
    int i;
    int *ip;
    ip = &i;
    
    NSLog(@"%d", *ip);
    for (int i = 0; i < 5; i++) {
        NSLog(@"%d", i);
    }
}
