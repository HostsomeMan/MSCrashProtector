//
//  NSString+MSSafe.m
//  
//
//  Created by J on 2013/2/27.
//  Copyright © 2013年 J. All rights reserved.
//

#import "NSString+MSSafe.h"

@implementation NSString (MSSafe)

- (BOOL)isNotEmpty{
    
    return [self length] != 0;
}

- (BOOL)isNotBlank{
    
    if ([self isNotEmpty]){
        
        return [[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] length] > 0;
    }
    return NO;
}

@end
