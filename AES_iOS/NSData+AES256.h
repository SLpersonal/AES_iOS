//
//  NSData+AES256.h
//  AES_iOS
//
//  Created by Levi on 2016/3/27.
//  Copyright © 2017年 SL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonCryptor.h>
#import <CommonCrypto/CommonKeyDerivation.h>

@interface NSData (AES256)

+ (NSString *)AES256EncryptWithPlainText:(NSString *)plain;        /*加密方法,参数需要加密的内容*/
+ (NSString *)AES256DecryptWithCiphertext:(NSString *)ciphertexts; /*解密方法，参数数密文*/

@end
