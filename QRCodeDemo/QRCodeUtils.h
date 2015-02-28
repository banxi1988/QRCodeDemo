//
//  QRCodeUtils.h
//  QRCodeDemo
//
//  Created by Haizhen Lee on 15/2/28.
//  Copyright (c) 2015年 banxi1988. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface QRCodeUtils : NSObject
+ (UIImage *)qrcodeImageOfString:(NSString*) string withSize:(NSUInteger) size;
@end
