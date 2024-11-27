/*
 * Sentinel-Shuttle for Objective-C
 *
 * by Data Infrastructure
 * Template version
 * - 0.1.1 : first release
 * - 0.1.2 : log_id methods
 * - 0.1.3 : remove _$ssToken
 * - 0.1.4 : toNSDictionary(NSDictionary*)
 * - 0.1.5 : extra partition exception
 *
 * Author
 *  - Sentinel Shuttle Generator v3.0
 *  - hyeyoung.song@sk.com (Data Infrastructure Team)
 */

#import <Foundation/Foundation.h>

@interface DiRakeClientTestIOsSentinelShuttle : NSObject

- (id)init;

// all methods for field setting
- (DiRakeClientTestIOsSentinelShuttle*) base_time:(NSString *) base_time;

- (DiRakeClientTestIOsSentinelShuttle*) local_time:(NSString *) local_time;

- (DiRakeClientTestIOsSentinelShuttle*) recv_time:(NSString *) recv_time;

- (DiRakeClientTestIOsSentinelShuttle*) os_name:(NSString *) os_name;

- (DiRakeClientTestIOsSentinelShuttle*) os_version:(NSString *) os_version;

- (DiRakeClientTestIOsSentinelShuttle*) resolution:(NSString *) resolution;

- (DiRakeClientTestIOsSentinelShuttle*) screen_width:(NSNumber *) screen_width;

- (DiRakeClientTestIOsSentinelShuttle*) screen_height:(NSNumber *) screen_height;

- (DiRakeClientTestIOsSentinelShuttle*) language_code:(NSString *) language_code;

- (DiRakeClientTestIOsSentinelShuttle*) rake_lib:(NSString *) rake_lib;

- (DiRakeClientTestIOsSentinelShuttle*) rake_lib_version:(NSString *) rake_lib_version;

- (DiRakeClientTestIOsSentinelShuttle*) ip:(NSString *) ip;

- (DiRakeClientTestIOsSentinelShuttle*) recv_host:(NSString *) recv_host;

- (DiRakeClientTestIOsSentinelShuttle*) token:(NSString *) token;

- (DiRakeClientTestIOsSentinelShuttle*) device_id:(NSString *) device_id;

- (DiRakeClientTestIOsSentinelShuttle*) device_model:(NSString *) device_model;

- (DiRakeClientTestIOsSentinelShuttle*) manufacturer:(NSString *) manufacturer;

- (DiRakeClientTestIOsSentinelShuttle*) carrier_name:(NSString *) carrier_name;

- (DiRakeClientTestIOsSentinelShuttle*) network_type:(NSString *) network_type;

- (DiRakeClientTestIOsSentinelShuttle*) app_release:(NSString *) app_release;

- (DiRakeClientTestIOsSentinelShuttle*) app_build_number:(NSString *) app_build_number;

- (DiRakeClientTestIOsSentinelShuttle*) browser_name:(NSString *) browser_name;

- (DiRakeClientTestIOsSentinelShuttle*) browser_version:(NSString *) browser_version;

- (DiRakeClientTestIOsSentinelShuttle*) referrer:(NSString *) referrer;

- (DiRakeClientTestIOsSentinelShuttle*) url:(NSString *) url;

- (DiRakeClientTestIOsSentinelShuttle*) document_title:(NSString *) document_title;

- (DiRakeClientTestIOsSentinelShuttle*) page_id:(NSString *) page_id;

- (DiRakeClientTestIOsSentinelShuttle*) action_id:(NSString *) action_id;

- (DiRakeClientTestIOsSentinelShuttle*) dmpc:(NSString *) dmpc;

- (DiRakeClientTestIOsSentinelShuttle*) reserved02:(NSString *) reserved02;

- (DiRakeClientTestIOsSentinelShuttle*) context_id:(NSString *) context_id;

- (DiRakeClientTestIOsSentinelShuttle*) context_desc:(NSString *) context_desc;

- (DiRakeClientTestIOsSentinelShuttle*) user_id:(NSString *) user_id;

- (DiRakeClientTestIOsSentinelShuttle*) ab_test_group:(NSString *) ab_test_group;

- (DiRakeClientTestIOsSentinelShuttle*) setBodyOfpage1__action1_with_context_id:(NSString *) context_id
context_desc:(NSString *) context_desc;




// 10 public util functions
- (NSString *) toString;
- (NSString *) toHBString;
- (NSString *) toHBString:(NSString *)delim;
- (NSString *) headerToString:(NSString *)delim;
- (void) clearBody;
- (NSDictionary *) getBody;
- (NSString *) bodyToString;
+ (NSDictionary *) toNSDictionary:(NSDictionary *)dict;
- (NSDictionary *) toNSDictionary;
- (NSString *) toJSONString;
- (NSString *) getEscapedValue:(NSString *)value;
+ (NSDictionary *) getSentinelMeta;
- (NSString *) convertFromNSMutableDictionaryToString: (NSMutableDictionary *)dict;

@end
