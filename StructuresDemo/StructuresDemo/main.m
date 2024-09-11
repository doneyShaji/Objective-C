//
//  main.m
//  StructuresDemo
//
//  Created by P10 on 10/09/24.
//

#import <Foundation/Foundation.h>

struct Books {
    NSString *name;
};

@interface BookDetails : NSObject
- (void) bookName: (struct Books)title;
@end

@implementation BookDetails

- (void) bookName:(struct Books)title {
    NSLog(@"%@", title.name);
}

@end
int main() {
    struct Books book1;
    book1.name = @"Percy";
    BookDetails *bookDetail = [[BookDetails alloc]init];
    
    [bookDetail bookName:book1];
}
