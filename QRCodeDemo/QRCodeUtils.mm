//
//  QRCodeUtils.m
//  QRCodeDemo
//
//  Created by Haizhen Lee on 15/2/28.
//  Copyright (c) 2015年 banxi1988. All rights reserved.
//

#import "QRCodeUtils.h"
#import "QREncoder.h"
@implementation QRCodeUtils
+ (UIImage *)qrcodeImageOfString:(NSString *)string withSize:(NSUInteger)size{
    DataMatrix * qrMatrix = [QREncoder encodeWithECLevel:QR_ECLEVEL_AUTO version:QR_VERSION_AUTO string:string];
    return [QREncoder renderDataMatrix:qrMatrix imageDimension:(int)size];
    
}
@end
