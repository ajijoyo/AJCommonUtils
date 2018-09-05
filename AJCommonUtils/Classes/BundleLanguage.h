//
//  BundleLanguage.h
//  FasTravel
//
//  Created by PT.Bimasakti Multi Sinergi on 2/9/16.
//  Copyright © 2016 PT.Bimasakti Multi Sinergi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

static const char _bundle=0;

@interface NSBundle (Language)
+(void)setLanguage:(NSString*)language;
+(NSString*)selectedLanguage;
@end

@interface BundleLanguage : NSBundle

@end
