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

#import <objc/message.h>
#import <foundation/NSJSONSerialization.h>
#import "DiRakeClientTestIOsSentinelShuttle.h"



@interface DiRakeClientTestIOsSentinelShuttle()

// private members (meta data)

// private fields
@property(nonatomic) NSString * base_time;
@property(nonatomic) NSString * local_time;
@property(nonatomic) NSString * recv_time;
@property(nonatomic) NSString * os_name;
@property(nonatomic) NSString * os_version;
@property(nonatomic) NSString * resolution;
@property(nonatomic) NSNumber * screen_width;
@property(nonatomic) NSNumber * screen_height;
@property(nonatomic) NSString * language_code;
@property(nonatomic) NSString * rake_lib;
@property(nonatomic) NSString * rake_lib_version;
@property(nonatomic) NSString * ip;
@property(nonatomic) NSString * recv_host;
@property(nonatomic) NSString * token;
@property(nonatomic) NSString * log_version;
@property(nonatomic) NSString * device_id;
@property(nonatomic) NSString * device_model;
@property(nonatomic) NSString * manufacturer;
@property(nonatomic) NSString * carrier_name;
@property(nonatomic) NSString * network_type;
@property(nonatomic) NSString * app_release;
@property(nonatomic) NSString * app_build_number;
@property(nonatomic) NSString * browser_name;
@property(nonatomic) NSString * browser_version;
@property(nonatomic) NSString * referrer;
@property(nonatomic) NSString * url;
@property(nonatomic) NSString * document_title;
@property(nonatomic) NSString * page_id;
@property(nonatomic) NSString * action_id;
@property(nonatomic) NSString * dmpc;
@property(nonatomic) NSString * reserved02;
@property(nonatomic) NSString * context_id;
@property(nonatomic) NSString * context_desc;
@property(nonatomic) NSString * user_id;
@property(nonatomic) NSString * ab_test_group;


@end

@implementation DiRakeClientTestIOsSentinelShuttle



static NSString *_$ssTemplateVersion = @"0.1.5";
static NSString *_$ssVersion = @"19.07.24:3.1.0:7";
static NSString *_$ssSchemaId = @"DiRakeClientTestIOs";
static NSString *_$ssDelim = @"\t";
static NSString *_$logVersionKey = @"log_version";
static NSString *_$extraPartitionFieldKey = @"";

static NSArray *headerFieldNameList;
static NSArray *bodyFieldNameList;
static NSArray *actionKeyNameList;
static NSDictionary *bodyRule;
static NSArray *encryptedFieldsList;

+ (void)initialize {
    headerFieldNameList = @[@"base_time", @"local_time", @"recv_time", @"os_name", @"os_version", @"resolution", @"screen_width", @"screen_height", @"language_code", @"rake_lib", @"rake_lib_version", @"ip", @"recv_host", @"token", @"log_version", @"device_id", @"device_model", @"manufacturer", @"carrier_name", @"network_type", @"app_release", @"app_build_number", @"browser_name", @"browser_version", @"referrer", @"url", @"document_title", @"page_id", @"action_id", @"dmpc", @"reserved02"];
    bodyFieldNameList = @[@"context_id", @"context_desc", @"user_id", @"ab_test_group"];
    actionKeyNameList = @[@"page_id", @"action_id"];
    encryptedFieldsList = @[@"device_id"];

    bodyRule = [[NSMutableDictionary alloc]init];



}

- (id)init {
    self = [super init];
    if (self) {
        _log_version = _$ssVersion;
    }

    return self;
}


/**
 * Methods
 */

- (DiRakeClientTestIOsSentinelShuttle *) base_time:(NSString *) base_time {
    _base_time = base_time;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) local_time:(NSString *) local_time {
    _local_time = local_time;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) recv_time:(NSString *) recv_time {
    _recv_time = recv_time;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) os_name:(NSString *) os_name {
    _os_name = os_name;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) os_version:(NSString *) os_version {
    _os_version = os_version;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) resolution:(NSString *) resolution {
    _resolution = resolution;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) screen_width:(NSNumber *) screen_width {
    _screen_width = screen_width;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) screen_height:(NSNumber *) screen_height {
    _screen_height = screen_height;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) language_code:(NSString *) language_code {
    _language_code = language_code;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) rake_lib:(NSString *) rake_lib {
    _rake_lib = rake_lib;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) rake_lib_version:(NSString *) rake_lib_version {
    _rake_lib_version = rake_lib_version;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) ip:(NSString *) ip {
    _ip = ip;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) recv_host:(NSString *) recv_host {
    _recv_host = recv_host;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) token:(NSString *) token {
    _token = token;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) device_id:(NSString *) device_id {
    _device_id = device_id;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) device_model:(NSString *) device_model {
    _device_model = device_model;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) manufacturer:(NSString *) manufacturer {
    _manufacturer = manufacturer;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) carrier_name:(NSString *) carrier_name {
    _carrier_name = carrier_name;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) network_type:(NSString *) network_type {
    _network_type = network_type;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) app_release:(NSString *) app_release {
    _app_release = app_release;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) app_build_number:(NSString *) app_build_number {
    _app_build_number = app_build_number;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) browser_name:(NSString *) browser_name {
    _browser_name = browser_name;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) browser_version:(NSString *) browser_version {
    _browser_version = browser_version;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) referrer:(NSString *) referrer {
    _referrer = referrer;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) url:(NSString *) url {
    _url = url;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) document_title:(NSString *) document_title {
    _document_title = document_title;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) page_id:(NSString *) page_id {
    _page_id = page_id;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) action_id:(NSString *) action_id {
    _action_id = action_id;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) dmpc:(NSString *) dmpc {
    _dmpc = dmpc;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) reserved02:(NSString *) reserved02 {
    _reserved02 = reserved02;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) context_id:(NSString *) context_id {
    _context_id = context_id;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) context_desc:(NSString *) context_desc {
    _context_desc = context_desc;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) user_id:(NSString *) user_id {
    _user_id = user_id;
    return self;
}

- (DiRakeClientTestIOsSentinelShuttle *) ab_test_group:(NSString *) ab_test_group {
    _ab_test_group = ab_test_group;
    return self;
}
- (DiRakeClientTestIOsSentinelShuttle *) setBodyOfpage1__action1_with_context_id:(NSString *) context_id
context_desc:(NSString *) context_desc
 {
    [self clearBody];
    _page_id = @"page1";
    _action_id = @"action1";
    _context_id = context_id;
    _context_desc = context_desc;

    return self;
}




// 12 public util functions
- (NSString *) toString {
    return [self toHBString];
}

- (NSString *) toHBString {
    return [self toHBString: _$ssDelim];
}

- (NSString *) toHBString:(NSString *)delim {
    return [NSString stringWithFormat:@"%@%@",[self headerToString:delim],[self bodyToString]];
}

- (NSString *) headerToString:(NSString *)delim {
    NSString *headerString = @"";
    for (NSString *fieldName in headerFieldNameList) {

        NSString *valueString = @"";
        NSObject *value = [self valueForKey:fieldName];

        if (value != nil) {
            if ([value isKindOfClass:[NSNumber class]]) {
                valueString = [NSString stringWithFormat:@"%@",value];
            } else if ([value isKindOfClass:[NSString class]]) {
                valueString = [self getEscapedValue:(NSString*)value];
            } else if ([value isKindOfClass:[NSMutableDictionary class]]) {
                valueString = [self convertFromNSMutableDictionaryToString:(NSMutableDictionary *)value];
            }
        } else {
            if ([_$extraPartitionFieldKey isEqualToString:fieldName]) {
                @throw [NSException exceptionWithName:@"IllegalArgumentException"
                                               reason:[NSString stringWithFormat:@"%@ should not be empty.", fieldName]
                                             userInfo: nil];
        }
     }

        headerString = [headerString stringByAppendingString:[valueString stringByAppendingString:delim]];
    }

    return headerString;
}

- (void) clearBody {
    for (NSString *bodyFieldName in bodyFieldNameList) {
        [self setValue:nil forKey:bodyFieldName];
    }
    
}


- (NSDictionary *) getBody {
    
    NSMutableDictionary *body = [[NSMutableDictionary alloc] init];

    for (NSString *bodyFieldName in bodyFieldNameList) {
        if ([self valueForKey:bodyFieldName]) {
            [body setValue:[self valueForKey:bodyFieldName] forKey:bodyFieldName];
        }
    }

    return body;
}

- (NSString *) bodyToString {
    NSError *err;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:[self getBody] options:0 error:&err];
    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];

    return [self getEscapedValue:jsonString];
}

+ (NSDictionary *) getSentinelMeta {

    NSMutableDictionary *fieldOrder = [[NSMutableDictionary alloc] init];

    int i = 0;
    for (i = 0; i < headerFieldNameList.count ; i++) {
        NSString *headerFieldName = [headerFieldNameList objectAtIndex:i];
        [fieldOrder setValue:[NSNumber numberWithInt:i] forKey:headerFieldName];
    }

    [fieldOrder setValue:[NSNumber numberWithInt:i] forKey:@"_$body"];

    NSDictionary *sentinel_meta = @{@"sentinel_meta":@{
                                            @"_$schemaId": _$ssSchemaId,
                                            @"_$fieldOrder":fieldOrder,
                                            @"_$encryptionFields":encryptedFieldsList,
                                            @"_$projectId":@""
                                            }};

    return sentinel_meta;
}

+ (NSDictionary *) toNSDictionary:(NSDictionary *)dict {
    NSMutableDictionary *sentinelDictionary = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *bodyDictionary = [[NSMutableDictionary alloc] init];

    if (![_$extraPartitionFieldKey isEqualToString:@""]) {
        if (![[dict allKeys] containsObject:_$extraPartitionFieldKey]) {
            @throw [NSException exceptionWithName:@"IllegalArgumentException"
                                           reason:[NSString stringWithFormat:@"%@ should be exist.", _$extraPartitionFieldKey]
                                         userInfo: nil];
        }
    }

    for (NSString *fieldName in headerFieldNameList) {
        if ([dict valueForKey:fieldName] != nil) {
            sentinelDictionary[fieldName] = dict[fieldName];
        } else {
            sentinelDictionary[fieldName] = @"";
        }
    }

    sentinelDictionary[_$logVersionKey] = _$ssVersion;

    for (NSString* fieldName in bodyFieldNameList) {
        if ([dict valueForKey:fieldName] != nil) {
            bodyDictionary[fieldName] = dict[fieldName];
        }
    }

    [sentinelDictionary setValue:bodyDictionary forKey:@"_$body"];
    [sentinelDictionary setValue:[[DiRakeClientTestIOsSentinelShuttle getSentinelMeta] valueForKey:@"sentinel_meta"] forKey:@"sentinel_meta"];

    return sentinelDictionary;
}

- (NSDictionary *) toNSDictionary {
    NSMutableDictionary* properties = [[NSMutableDictionary alloc] init];

    // header
    for (NSString *headerFieldName in headerFieldNameList) {
        NSString *valueString = @"";
        if ([self valueForKey:headerFieldName] != nil) {
            valueString = [self valueForKey:headerFieldName];
            if ([valueString isKindOfClass:[NSString class]]) {
                valueString = [self getEscapedValue:valueString];
            }
        } else {
            if ([_$extraPartitionFieldKey isEqualToString:headerFieldName]) {
                @throw [NSException exceptionWithName:@"IllegalArgumentException"
                                               reason:[NSString stringWithFormat:@"%@ should not be empty.", headerFieldName]
                                             userInfo: nil];
            }
        }
        [properties setValue:valueString forKey:headerFieldName];
    }

    // body
    [properties setValue:[self getBody] forKey:@"_$body"];

    // sentinel_meta
    [properties setValue:[[DiRakeClientTestIOsSentinelShuttle getSentinelMeta] valueForKey:@"sentinel_meta"] forKey:@"sentinel_meta"];

    return properties;
}


- (NSString *) toJSONString {
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:[self toNSDictionary]
                                                       options:(NSJSONWritingOptions)NSJSONWritingPrettyPrinted
                                                       error:&error];
    if (! jsonData) {
        NSLog(@"bv_jsonStringWithPrettyPrint: error: %@", error.localizedDescription);
        return @"{}";
    } else {
        return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
}

- (NSString *) getEscapedValue:(NSString *)value {
    return [[[value stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"] stringByReplacingOccurrencesOfString:@"\t" withString:@"\\t"] stringByReplacingOccurrencesOfString:@"\r" withString:@"\\r"];
}

- (NSString *) convertFromNSMutableDictionaryToString: (NSMutableDictionary *)dict {
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict options:0 error:nil];
    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    return jsonString;
}

@end
