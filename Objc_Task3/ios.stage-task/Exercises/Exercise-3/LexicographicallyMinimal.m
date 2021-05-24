#import "LexicographicallyMinimal.h"

@interface LexicographicallyMinimal()

@property (nonatomic, strong) NSMutableString *resultString;

@end

@implementation LexicographicallyMinimal

-(NSString *)findLexicographicallyMinimalForString1:(NSString *)string1 andString2:(NSString *)string2 {
    NSMutableString *firstString = [NSMutableString stringWithString:string1];
        NSMutableString *secondString = [NSMutableString stringWithString:string2];
        NSMutableString *result = [[NSMutableString alloc] init];
        
        while ((firstString.length) && (secondString.length)) {
                [firstString characterAtIndex:0];

        
        if ([firstString UTF8String][0] <= [secondString UTF8String][0]) {
                    [result appendFormat:@"%c", [firstString characterAtIndex:0]];
                    [firstString deleteCharactersInRange:NSMakeRange(0, 1)];
                } else {
                    [result appendFormat:@"%c", [secondString characterAtIndex:0]];
                    [secondString deleteCharactersInRange:NSMakeRange(0, 1)];
                }
        }
            
        firstString.length == 0 ? [result appendString:secondString] : [result appendString:firstString];
       
        return result;}

@end
