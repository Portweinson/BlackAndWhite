//
//  BAWCommonMacros.h
//  BlackAndWhite
//
//  Created by Вячеслав Ембатуров on 03.10.14.
//  Copyright (c) 2014 Вячеслав Ембатуров. All rights reserved.
//

#ifndef BlackAndWhite_BAWCommonMacros_h
#define BlackAndWhite_BAWCommonMacros_h


#pragma mark - Standalone objects calls

#define USER_DEFAULTS [NSUserDefaults standardUserDefaults]
#define NOTIFICATION_CENTER [NSNotificationCenter defaultCenter]
#define SHARED_APPLICATION [UIApplication sharedApplication]
#define APP_DELEGATE ((AppDelegate *)[[UIApplication sharedApplication] delegate])

#pragma mark -

#define BundleID [[NSBundle mainBundle] bundleIdentifier]

#pragma mark - NSString

#define NSLS(str) NSLocalizedString(str, nil)

#pragma mark - UIColor

#define UIColorRGB(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]
#define UIColorRGBA(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define UIColorHex(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#endif
