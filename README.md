# YWOnlySign
目前常用的获取UDID的方法就是用第三方OpenUDID
但是这种方法在卸载了APP之后可能会导致UDID产生变化，给后台造成误导

使用方法

    NSString *uuid = [YWOnlySign getUUID];

YWOnlySign 通过随机生成一段 字符串 作为设备的唯一标示
	
	+ (NSString *)uuid {
    CFUUIDRef puuid = CFUUIDCreate(nil);
    CFStringRef uuidString = CFUUIDCreateString(nil, puuid);
    NSString *result = (NSString *)CFBridgingRelease(CFStringCreateCopy(NULL, uuidString));
    CFRelease(puuid);
    CFRelease(uuidString);
    result = [result lowercaseString];
    return result;
    }


再利用 bundleId 作为key 存入Keychain

	+ (void)save:(NSString *)service data:(id)data {
    //Get search dictionary
    NSMutableDictionary *keychainQuery = [self getKeychainQuery:service];
    //Delete old item before add new item
    SecItemDelete((__bridge_retained CFDictionaryRef)keychainQuery);
    //Add new object to search dictionary(Attention:the data format)
    [keychainQuery setObject:[NSKeyedArchiver archivedDataWithRootObject:data] forKey:(__bridge_transfer id)kSecValueData];
    //Add item to keychain with the search dictionary
    SecItemAdd((__bridge_retained CFDictionaryRef)keychainQuery, NULL);
    }


即使APP卸载了，重新安装 只要bundleId不变 这个获取的唯一标示就不会变
