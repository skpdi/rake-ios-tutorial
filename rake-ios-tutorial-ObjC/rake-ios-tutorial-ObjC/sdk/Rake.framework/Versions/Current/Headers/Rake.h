#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#if DEBUG
#define RAKE_LOG
#define RAKE_DEBUG
#endif

//! Project version number for Rake.
FOUNDATION_EXPORT double RakeVersionNumber;

//! Project version string for Rake.
FOUNDATION_EXPORT const unsigned char RakeVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <Rake/PublicHeader.h>

@protocol RakeDelegate;

/*!
 @header
 Rake.h
 @brief
 The primary interface for integrating Rake with your app.

 @copyright
 SKPlanet

 */
@interface Rake : NSObject


/*!
 @property

 @abstract
 The distinct ID of the current user.

 @discussion
 A distinct ID is a string that uniquely identifies one of your users.
 Typically, this is the user ID from your database. By default, we'll use a
 hash of the MAC address of the device. To change the current distinct ID,
 use the <code>identify:</code> method.
 */
@property (atomic, readonly, copy) NSString *distinctId;

/*!
 @property

 @abstract
 Current user's name in Rake Streams.
 */
@property (atomic, copy) NSString *nameTag;

/*!
 @property

 @abstract
 The base URL used for Rake API requests.

 */
@property (atomic, copy, readonly) NSString *serverURL; // set property readonly to generate custom setter function.

/*!
 @property

 @abstract
 Flush timer's interval.

 @discussion
 Setting a flush interval of 0 will turn off the flush timer.
 */
@property (atomic) NSUInteger flushInterval;

/*!
 @property

 @abstract
 Control whether the library should flush data to Rake when the app
 is in background.

 @discussion
 Defaults to NO. Even though this value is YES, if no background modes are set,
 background flush will not be executed.
 */
@property (atomic) BOOL flushOnBackground;


/*!
 @property
 
 @abstract
  CrashLogger use or not
 
 @discussion
  If set crashLoggerAppKey , CrashLogger will start.
 */
#ifdef USE_PLCRASHREPORTER
@property (nonatomic, copy) NSString *crashLoggerAppKey;
#endif
@property (atomic) BOOL showNetworkActivityIndicator;



/*!
 @property

 @abstract
 The a RakeDelegate object that can be used to assert fine-grain control
 over Rake network activity.

 @discussion
 Using a delegate is optional. See the documentation for RakeDelegate
 below for more information.
 */
@property (atomic, weak) id<RakeDelegate> delegate; // allows fine grain control over uploading (optional)

/*!
 @method

 @abstract
 Initializes and returns a singleton instance of the API.

 @discussion
 If you are only going to send data to a single Rake project from your app,
 as is the common case, then this is the easiest way to use the API. This
 method will set up a singleton instance of the <code>Rake</code> class for
 you using the given project token. When you want to make calls to Rake
 elsewhere in your code, you can use <code>sharedInstance</code>.

 <pre>
 [Rake sharedInstance] track:@"Something Happened"]];
 </pre>

 If you are going to use this singleton approach,
 <code>sharedInstanceWithToken:</code> <b>must be the first call</b> to the
 <code>Rake</code> class, since it performs important initializations to
 the API.

 @param apiToken        your project token
 @param isDevServer     send to development server or live server
 */
//+ (Rake *)sharedInstanceWithToken:(NSString *)apiToken;

+ (Rake *)sharedInstanceWithToken:(NSString *)apiToken andUseDevServer:(BOOL)isDevServer;

/*!
 @method

 @abstract
 Returns the previously instantiated singleton instance of the API.

 @discussion
 The API must be initialized with <code>sharedInstanceWithToken:</code> before
 calling this class method.
 */
+ (Rake *)sharedInstance;


/*!
 @method

 @abstract
 Initializes an instance of the API with the given project token.

 @discussion
 Returns the a new API object. This allows you to create more than one instance
 of the API object, which is convenient if you'd like to send data to more than
 one Rake project from a single app. If you only need to send data to one
 project, consider using <code>sharedInstanceWithToken:</code>.
 This method should be used with <b>LIVE</b> token.

 @param apiToken        your LIVE project token 
 @param flushInterval   interval to run background flushing
 */
- (instancetype)initWithToken:(NSString *)apiToken andFlushInterval:(NSUInteger)flushInterval;

/*!
 @method
 
 @abstract
 Initializes an instance of the API with the given project token.
 
 @discussion
 Returns the a new API object. This allows you to create more than one instance
 of the API object, which is convenient if you'd like to send data to more than
 one Rake project from a single app. If you only need to send data to one
 project, consider using <code>sharedInstanceWithToken:</code>.
 
 @param apiToken        your project token
 @param isDevServer     send to development server or live server
 */
- (instancetype)initWithToken:(NSString *)apiToken andUseDevServer:(BOOL)isDevServer;

/*!
 @method
 
 @abstract
 Changes current server url string's port value with the given port number.
 
 @discussion
 If there is a port number in the current server url, this will change the port 
 number with the new one. This is created for some apps to help sending their logs
 to specific non-charging port of Rake server.
 
 @param port            port number
 */
- (void)setServerPort:(NSInteger)port;

/*!
 @method

 @abstract
 Changes current server url with the given url.

 @discussion
 This is created to help sending its logs to specific Rake Server url.

 @param url            endpoint url
 */
- (void)setServerURL:(NSString *) url;

/*!
 @method
 
 @abstract
 Enable or disable DMP Mode.
 
 @discussion
 If DMP Mode is enabled, IDFA value will be collected automatically
 
 @param enable            enable YES/NO
 */
- (void)setDmpMode:(BOOL) enable;

/*!
 @method

 @abstract
 Tracks an event with properties.

 @discussion
 Properties will allow you to segment your events in your Rake reports.
 Property keys must be <code>NSString</code> objects and values must be
 <code>NSString</code>, <code>NSNumber</code>, <code>NSNull</code>,
 <code>NSArray</code>, <code>NSDictionary</code>, <code>NSDate</code> or
 <code>NSURL</code> objects.

 @param properties      properties dictionary
 */
- (void)track:(NSDictionary *)properties;

/*!
 @method
 
 @abstract
 Exclude auto collection properties from auto collection.
 
 @discussion
 For example, if you don't want to collect "device_id" automatically,
 call this method and pass a NSArray including "device_id".
 If you want to reset auto collection properties, pass empty NSArray or nil as a parameter.
 
 @param properties      default property names to exclude from auto collection.
 */
- (void)excludeAutoProperties:(NSArray *)properties;

/*!
 @method

 @abstract
 Registers super properties, overwriting ones that have already been set.

 @discussion
 Super properties, once registered, are automatically sent as properties for
 all event tracking calls. They save you having to maintain and add a common
 set of properties to your events. Property keys must be <code>NSString</code>
 objects and values must be <code>NSString</code>, <code>NSNumber</code>,
 <code>NSNull</code>, <code>NSArray</code>, <code>NSDictionary</code>,
 <code>NSDate</code> or <code>NSURL</code> objects.

 @param properties      properties dictionary
 */
- (void)registerSuperProperties:(NSDictionary *)properties;

/*!
 @method

 @abstract
 Registers super properties without overwriting ones that have already been
 set.

 @discussion
 Property keys must be <code>NSString</code> objects and values must be
 <code>NSString</code>, <code>NSNumber</code>, <code>NSNull</code>,
 <code>NSArray</code>, <code>NSDictionary</code>, <code>NSDate</code> or
 <code>NSURL</code> objects.

 @param properties      properties dictionary
 */
- (void)registerSuperPropertiesOnce:(NSDictionary *)properties;

/*!
 @method

 @abstract
 Registers super properties without overwriting ones that have already been set
 unless the existing value is equal to defaultValue.

 @discussion
 Property keys must be <code>NSString</code> objects and values must be
 <code>NSString</code>, <code>NSNumber</code>, <code>NSNull</code>,
 <code>NSArray</code>, <code>NSDictionary</code>, <code>NSDate</code> or
 <code>NSURL</code> objects.

 @param properties      properties dictionary
 @param defaultValue    overwrite existing properties that have this value
 */
- (void)registerSuperPropertiesOnce:(NSDictionary *)properties defaultValue:(id)defaultValue;

/*!
 @method

 @abstract
 Removes a previously registered super property.

 @discussion
 As an alternative to clearing all properties, unregistering specific super
 properties prevents them from being recorded on future events. This operation
 does not affect the value of other super properties. Any property name that is
 not registered is ignored.

 Note that after removing a super property, events will show the attribute as
 having the value <code>undefined</code> in Rake until a new value is
 registered.

 @param propertyName   array of property name strings to remove
 */
- (void)unregisterSuperProperty:(NSString *)propertyName;

/*!
 @method

 @abstract
 Clears all currently set super properties.
 */
- (void)clearSuperProperties;

/*!
 @method

 @abstract
 Returns the currently set super properties.
 */
- (NSDictionary *)currentSuperProperties;

/*!
 @method

 @abstract
 Clears all stored properties and distinct IDs. Useful if your app's user logs out.
 */
- (void)reset;

/*!
 @method

 @abstract
 Uploads queued data to the Rake server.

 @discussion
 By default, queued data is flushed to the Rake servers every minute (the
 default for <code>flushInvterval</code>), and on background (since
 <code>flushOnBackground</code> is on by default). You only need to call this
 method manually if you want to force a flush at a particular moment.
 */
- (void)flush;

/*!
 @method

 @abstract
 Writes current project info, including distinct ID, super properties and pending event
 record queues to disk.

 @discussion
 This state will be recovered when the app is launched again if the Rake
 library is initialized with the same project token. <b>You do not need to call
 this method</b>. The library listens for app state changes and handles
 persisting data as needed. It can be useful in some special circumstances,
 though, for example, if you'd like to track app crashes from main.m.
 */
- (void)archive;

/*!
 @method
 @abstract
 Creates a distinct_id alias from alias to original id.
 @discussion
 This method is used to map an identifier called an alias to the existing Rake
 distinct id. This causes all events and people requests sent with the alias to be
 mapped back to the original distinct id. The recommended usage pattern is to call
 both createAlias: and identify: when the user signs up, and only identify: (with
 their new user ID) when they log in. This will keep your signup funnels working
 correctly.
 <pre>
 // This makes the current ID (an auto-generated GUID)
 // and 'Alias' interchangeable distinct ids.
 [rake createAlias:@"Alias"
 forDistinctID:rake.distinctId];

 </pre>
 @param alias 		the new distinct_id that should represent original
 @param distinctID 	the old distinct_id that alias will be mapped to
 */
- (void)createAlias:(NSString *)alias forDistinctID:(NSString *)distinctID;


/*!
 @method
 
 @abstract
 Get Rake version
 
 */

- (NSString *)libVersion;
/*!
 @method
 
 @abstract
 Get Rake version
 
 */
+ (NSString *)libVersion;

@end



/*!
 @protocol

 @abstract
 Delegate protocol for controlling the Rake API's network behavior.

 @discussion
 Creating a delegate for the Rake object is entirely optional. It is only
 necessary when you want full control over when data is uploaded to the server,
 beyond simply calling stop: and start: before and after a particular block of
 your code.
 */
@protocol RakeDelegate <NSObject>
@optional

/*!
 @method

 @abstract
 Asks the delegate if data should be uploaded to the server.

 @discussion
 Return YES to upload now, NO to defer until later.

 @param Rake        Rake API instance
 */
- (BOOL)RakeWillFlush:(Rake *)Rake;

@end

