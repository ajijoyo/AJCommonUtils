//
//  BundleLanguage.m
//  FasTravel
//
//  Created by PT.Bimasakti Multi Sinergi on 2/9/16.
//  Copyright © 2016 PT.Bimasakti Multi Sinergi. All rights reserved.
//

#import "BundleLanguage.h"

@implementation BundleLanguage
-(NSString*)localizedStringForKey:(NSString *)key value:(NSString *)value table:(NSString *)tableName
{
    NSBundle* bundle=objc_getAssociatedObject(self, &_bundle);
    return bundle ? [bundle localizedStringForKey:key value:value table:tableName] : [super localizedStringForKey:key value:value table:tableName];
}
@end

@implementation NSBundle (Language)
+(void)saveLanguage:(NSString*)language{
    [[NSUserDefaults standardUserDefaults] setValue:language forKey:@"AppLanguage"];
}
+(NSString*)selectedLanguage{
    NSString *selected =  [[NSUserDefaults standardUserDefaults] valueForKey:@"AppLanguage"];
    if (selected) {
        return selected;
    }
    return nil;
}
+(void)setLanguage:(NSString*)language
{
    [NSBundle saveLanguage:language];
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^
                  {
                      object_setClass([NSBundle mainBundle],[BundleLanguage class]);
                  });
    objc_setAssociatedObject([NSBundle mainBundle], &_bundle, language ? [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:language ofType:@"lproj"]] : nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
@end
