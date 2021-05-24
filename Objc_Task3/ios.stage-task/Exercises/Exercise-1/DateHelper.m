#import "DateHelper.h"

@implementation DateHelper

#pragma mark - First

-(NSString *)monthNameBy:(NSUInteger)monthNumber {
    if (monthNumber == 1) {
            return @"January";
        } else if (monthNumber == 2) {
            return @"February";
        } else if (monthNumber == 3) {
            return @"March";
        } else if (monthNumber == 4) {
            return @"April";
        } else if (monthNumber == 5) {
            return @"May";
        } else if (monthNumber == 6) {
            return @"June";
        } else if (monthNumber == 7) {
            return @"July";
        } else if (monthNumber == 8) {
            return @"August";
        } else if (monthNumber == 9) {
            return @"September";
        } else if (monthNumber == 10) {
            return @"October";
        } else if (monthNumber == 11) {
            return @"November";
        } else if (monthNumber == 12) {
            return @"December";
        }
    
    return nil;
}

#pragma mark - Second

- (long)dayFromDate:(NSString *)date {
    NSCalendar *calendar = [NSCalendar currentCalendar];
       NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
       dateFormatter.dateFormat = @"yyyy-MM-dd'T'HH:mm:ssZ";
       
       NSDate *dateFromString = [dateFormatter dateFromString:date];
       NSDateComponents *components = [calendar components:NSCalendarUnitDay fromDate:dateFromString];
       return components.day;}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"ru_BY"];
        dateFormatter.dateFormat = @"E";
        
        return [dateFormatter stringFromDate:date];}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    NSCalendar *calendar = [NSCalendar currentCalendar];
        NSDateComponents *generalDate = [calendar components:(NSCalendarUnitWeekOfYear | NSCalendarUnitYear) fromDate:[NSDate now]];
        NSDateComponents *currentDate = [calendar components:(NSCalendarUnitWeekOfYear | NSCalendarUnitYear) fromDate:date];
        return currentDate.weekOfYear == generalDate.weekOfYear;}

@end
