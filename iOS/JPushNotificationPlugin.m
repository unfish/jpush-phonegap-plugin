
#import "JPushNotificationPlugin.h"
#import "APService.h"

@implementation JPushNotificationPlugin

- (void) setTagsAndAlias:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options
{
    CDVPluginResult* pluginResult;
    NSString* callbackID = [arguments pop];
    
    NSString *tags = [arguments objectAtIndex:0];
    
    NSString *alias = [arguments objectAtIndex:1];
    
        //NSLog(@"path %@, uti:%@", path, uti);
    
    NSArray *parts = [tags componentsSeparatedByString:@","];
    [APService setTags:[NSSet setWithArray:parts] alias:alias];
        
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString: @""];
    [self writeJavascript: [pluginResult toSuccessCallbackString:callbackID]];
}

@end
