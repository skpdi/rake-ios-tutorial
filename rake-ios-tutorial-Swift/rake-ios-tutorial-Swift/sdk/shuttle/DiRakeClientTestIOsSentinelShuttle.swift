/*
 * Sentinel-Shuttle for Swift
 *
 * by Data Infrastructure
 * Template version
 * - 0.1.1 : first release
 * - 0.1.2 : log_id methods
 * - 0.1.3 : remove _$ssToken
 * - 0.1.4 : toDictionary() -> [String:Any]
 * - 0.1.5 : extra partition exception
 *
 * Author
 *  - Sentinel Shuttle Generator v3.0
 *  - hyeyoung.song@sk.com (Data Infrastructure Team)
 */

import Foundation

public class DiRakeClientTestIOsSentinelShuttle {
    public enum DiRakeClientTestIOsSentinelShuttleError: Error {
        case EmptyExtraPartitionFieldError(reason:String)
    }

    private static let _$ssTemplateVersion = "0.1.5"
    private static let _$ssVersion = "22.08.22:4.0.5:11"
    private static let _$ssSchemaId = "DiRakeClientTestIOs"
    private static let _$ssDelim = "\t"
    private static let _$logVersionKey = "log_version"
    private static let _$extraPartitionFieldKey = ""

    private static let headerFieldNameList:[String] = ["base_time", "local_time", "recv_time", "os_name", "os_version", "resolution", "screen_width", "screen_height", "language_code", "rake_lib", "rake_lib_version", "ip", "recv_host", "token", "log_version", "device_id", "device_model", "manufacturer", "carrier_name", "network_type", "app_release", "app_build_number", "browser_name", "browser_version", "referrer", "url", "document_title", "page_id", "action_id", "dmpc", "reserved02"]
    private static let bodyFieldNameList:[String] = ["context_id", "context_desc", "user_id", "ab_test_group"]
    private static let actionKeyNameList:[String] = ["page_id", "action_id"]
    //    private static var bodyRule = [:]   // String,Any?
    private static let encryptedFieldsList:[String] = ["device_id"]

    private var fieldsDictionary:[String:Any?] = [:]
    

    public init() {

        for headerFieldName in DiRakeClientTestIOsSentinelShuttle.headerFieldNameList {
            if headerFieldName == DiRakeClientTestIOsSentinelShuttle._$logVersionKey {
                self.fieldsDictionary.updateValue(DiRakeClientTestIOsSentinelShuttle._$ssVersion, forKey: DiRakeClientTestIOsSentinelShuttle._$logVersionKey)
            } else {
                self.fieldsDictionary.updateValue(nil, forKey: headerFieldName)
            }
        }

        for bodyFieldName in DiRakeClientTestIOsSentinelShuttle.bodyFieldNameList {
            self.fieldsDictionary.updateValue(nil, forKey: bodyFieldName)
        }
    }

    /*
     Methods
     */

    public func base_time(_ base_time:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(base_time, forKey: "base_time")
        return self
    }

    public func local_time(_ local_time:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(local_time, forKey: "local_time")
        return self
    }

    public func recv_time(_ recv_time:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(recv_time, forKey: "recv_time")
        return self
    }

    public func os_name(_ os_name:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(os_name, forKey: "os_name")
        return self
    }

    public func os_version(_ os_version:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(os_version, forKey: "os_version")
        return self
    }

    public func resolution(_ resolution:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(resolution, forKey: "resolution")
        return self
    }

    public func screen_width(_ screen_width:Int?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(screen_width, forKey: "screen_width")
        return self
    }

    public func screen_height(_ screen_height:Int?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(screen_height, forKey: "screen_height")
        return self
    }

    public func language_code(_ language_code:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(language_code, forKey: "language_code")
        return self
    }

    public func rake_lib(_ rake_lib:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(rake_lib, forKey: "rake_lib")
        return self
    }

    public func rake_lib_version(_ rake_lib_version:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(rake_lib_version, forKey: "rake_lib_version")
        return self
    }

    public func ip(_ ip:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(ip, forKey: "ip")
        return self
    }

    public func recv_host(_ recv_host:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(recv_host, forKey: "recv_host")
        return self
    }

    public func token(_ token:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(token, forKey: "token")
        return self
    }

    public func device_id(_ device_id:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(device_id, forKey: "device_id")
        return self
    }

    public func device_model(_ device_model:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(device_model, forKey: "device_model")
        return self
    }

    public func manufacturer(_ manufacturer:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(manufacturer, forKey: "manufacturer")
        return self
    }

    public func carrier_name(_ carrier_name:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(carrier_name, forKey: "carrier_name")
        return self
    }

    public func network_type(_ network_type:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(network_type, forKey: "network_type")
        return self
    }

    public func app_release(_ app_release:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(app_release, forKey: "app_release")
        return self
    }

    public func app_build_number(_ app_build_number:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(app_build_number, forKey: "app_build_number")
        return self
    }

    public func browser_name(_ browser_name:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(browser_name, forKey: "browser_name")
        return self
    }

    public func browser_version(_ browser_version:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(browser_version, forKey: "browser_version")
        return self
    }

    public func referrer(_ referrer:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(referrer, forKey: "referrer")
        return self
    }

    public func url(_ url:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(url, forKey: "url")
        return self
    }

    public func document_title(_ document_title:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(document_title, forKey: "document_title")
        return self
    }

    public func page_id(_ page_id:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(page_id, forKey: "page_id")
        return self
    }

    public func action_id(_ action_id:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(action_id, forKey: "action_id")
        return self
    }

    public func dmpc(_ dmpc:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(dmpc, forKey: "dmpc")
        return self
    }

    public func reserved02(_ reserved02:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(reserved02, forKey: "reserved02")
        return self
    }

    public func context_id(_ context_id:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(context_id, forKey: "context_id")
        return self
    }

    public func context_desc(_ context_desc:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(context_desc, forKey: "context_desc")
        return self
    }

    public func user_id(_ user_id:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(user_id, forKey: "user_id")
        return self
    }

    public func ab_test_group(_ ab_test_group:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.fieldsDictionary.updateValue(ab_test_group, forKey: "ab_test_group")
        return self
    }

    public func setBodyOfpage1__action1(context_id:String?, context_desc:String?) -> DiRakeClientTestIOsSentinelShuttle {
        self.clearBody()
        self.fieldsDictionary.updateValue("page1", forKey: "page_id")
        self.fieldsDictionary.updateValue("action1", forKey: "action_id")
        self.fieldsDictionary.updateValue(context_id, forKey: "context_id")
        self.fieldsDictionary.updateValue(context_desc, forKey: "context_desc")

        return self
    }

    public func setBodyOftest__test() -> DiRakeClientTestIOsSentinelShuttle {
        self.clearBody()
        self.fieldsDictionary.updateValue("test", forKey: "page_id")
        self.fieldsDictionary.updateValue("test", forKey: "action_id")

        return self
    }




    /*
     12 public util functions
     */
    public func toString() -> String {
        return self.toHBString()
    }

    public func toHBString() -> String {
        return self.toHBString(DiRakeClientTestIOsSentinelShuttle._$ssDelim)
    }

    public func toHBString(_ delim:String) -> String {
        do {
            return try "\(self.headerToString(delim))\(self.bodyToString())"
        } catch let error {
            print("\(self) \(error)");
            return ""
        }
    }

    public func headerToString(_ delim:String) throws -> String {
        var headerString = ""

        for fieldName in DiRakeClientTestIOsSentinelShuttle.headerFieldNameList {
            var valueString = ""

            if let value = self.fieldsDictionary[fieldName] {
                if value is String {
                    valueString = self.getEscapedValue(value as! String)
                } else if value is [AnyHashable:Any] {
                    valueString = self.convertFromDictionaryToString(value as! [AnyHashable : Any])
                } else {
                    valueString = String(describing: value) //FIXME is it right?
                }
            } else {
                // extra partition field는 빈값이어서는 안된다.
                if DiRakeClientTestIOsSentinelShuttle._$extraPartitionFieldKey == fieldName {
                    throw DiRakeClientTestIOsSentinelShuttleError.EmptyExtraPartitionFieldError(reason: "\(self) \(fieldName) should not be empty.")
                }
            }

            headerString = headerString.appending("\(valueString)\(delim)")
        }

        return headerString
    }

    public func clearBody() {
        for bodyFieldName in DiRakeClientTestIOsSentinelShuttle.bodyFieldNameList {
            self.fieldsDictionary.updateValue(nil, forKey: bodyFieldName)
        }
        
    }

    public func getBody() -> [String:Any] {

        var body:[String:Any] = [:]

        for bodyFieldName in DiRakeClientTestIOsSentinelShuttle.bodyFieldNameList {
            let bodyFieldValue = self.fieldsDictionary[bodyFieldName]!
            if bodyFieldValue != nil {
                body.updateValue(bodyFieldValue!, forKey: bodyFieldName)
            }
        }

        return body
    }

    public func bodyToString() -> String {
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: self.getBody(), options: JSONSerialization.WritingOptions(rawValue: 0))
            let jsonString =  String.init(data: jsonData, encoding: String.Encoding.utf8)!
            return self.getEscapedValue(jsonString)
        } catch let error {
            print("\(self) bodyToString() failed: \(error)")
            return "{}"
        }
    }

    public static func getSentinelMeta() -> [String:[String:Any]] {
        var fieldOrder:[String:Int] = [:]
        for (index, headerFieldName) in DiRakeClientTestIOsSentinelShuttle.headerFieldNameList.enumerated() {
            fieldOrder.updateValue(index, forKey: headerFieldName)
        }

        fieldOrder.updateValue(DiRakeClientTestIOsSentinelShuttle.headerFieldNameList.count, forKey: "_$body")

        return [
            "sentinel_meta": [
                "_$schemaId": DiRakeClientTestIOsSentinelShuttle._$ssSchemaId,
                "_$fieldOrder": fieldOrder,
                "_$encryptionFields": DiRakeClientTestIOsSentinelShuttle.encryptedFieldsList,
                "_$projectId": ""
            ]
        ]
    }

    public static func toDictionary(_ dict:[String:Any?]) throws -> [String:Any] {
        var sentinelDictionary:[String:Any] = [:]
        var bodyDictionary:[String:Any] = [:]

        if DiRakeClientTestIOsSentinelShuttle._$extraPartitionFieldKey != "" {
            if !dict.keys.contains(DiRakeClientTestIOsSentinelShuttle._$extraPartitionFieldKey) {
                throw DiRakeClientTestIOsSentinelShuttleError.EmptyExtraPartitionFieldError(reason: "\(self) \(DiRakeClientTestIOsSentinelShuttle._$extraPartitionFieldKey) should be exist.")
            }
        }

        for fieldName in DiRakeClientTestIOsSentinelShuttle.headerFieldNameList {
            if let value = dict[fieldName] {
                sentinelDictionary.updateValue(value!, forKey: fieldName)
            } else {
                sentinelDictionary.updateValue("", forKey: fieldName)
            }
        }

        sentinelDictionary.updateValue(DiRakeClientTestIOsSentinelShuttle._$ssVersion, forKey: DiRakeClientTestIOsSentinelShuttle._$logVersionKey)

        for fieldName in DiRakeClientTestIOsSentinelShuttle.bodyFieldNameList {
            if let value = dict[fieldName] {
                bodyDictionary.updateValue(value!, forKey: fieldName)
            }
        }

        sentinelDictionary.updateValue(bodyDictionary, forKey: "_$body")
        sentinelDictionary.updateValue(self.getSentinelMeta()["sentinel_meta"]!, forKey: "sentinel_meta")

        return sentinelDictionary
    }

    public func toDictionary() throws -> [String:Any] {
        var properties:[String:Any] = [:]

        // header
        for headerFieldName  in DiRakeClientTestIOsSentinelShuttle.headerFieldNameList {
            var valueString = ""

            if let value = self.fieldsDictionary[headerFieldName]! {
                if value is String {
                    valueString = self.getEscapedValue(value as! String)
                } else {
                    valueString = String(describing: value)
                }
            } else {
                if DiRakeClientTestIOsSentinelShuttle._$extraPartitionFieldKey == headerFieldName {
                    throw DiRakeClientTestIOsSentinelShuttleError.EmptyExtraPartitionFieldError(reason: "\(self) \(headerFieldName) should not be empty.")
                }
            }

            properties.updateValue(valueString, forKey: headerFieldName)
        }

        // body
        properties.updateValue(self.getBody(), forKey: "_$body")

        // sentinel_meta
        properties.updateValue(DiRakeClientTestIOsSentinelShuttle.getSentinelMeta()["sentinel_meta"]!, forKey: "sentinel_meta")

        return properties
    }

    public func toJSONString() -> String {
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: self.toDictionary(), options: JSONSerialization.WritingOptions.prettyPrinted)
            return String.init(data: jsonData, encoding: String.Encoding.utf8)!
        } catch let error {
            print("\(self) toJSONString() failed: \(error)")
            return "{}"
        }
    }

    public func getEscapedValue(_ value:String) -> String {
        return value.replacingOccurrences(of: "\n", with: "\\n").replacingOccurrences(of: "\t", with: "\\t").replacingOccurrences(of: "\r", with: "\\r")
    }

    func convertFromDictionaryToString(_ dict:[AnyHashable:Any]) -> String {
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: dict, options: JSONSerialization.WritingOptions(rawValue: 0))
            return String.init(data: jsonData, encoding: String.Encoding.utf8)!
        } catch let error {
            print("\(self) convertFromDictionaryToString() failed: \(error)")
            return "{}"
        }
    }
}
