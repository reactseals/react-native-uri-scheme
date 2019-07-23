#import "RCTBridgeModule.h"

@implementation RNUriScheme

@interface RNUriScheme : NSObject <RCTBridgeModule>
@end

@implementation RNUriScheme {
}

RCT_EXPORT_MODULE()

- (NSString*) uriScheme
{
    if([[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"]) {
        NSArray *urlTypes = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleURLTypes"];
        NSString *scheme = @"scannerapp";
        for(NSDictionary *urlType in urlTypes)
        {
            if(urlType[@"CFBundleURLName"] && [urlType[@"CFBundleURLName"] isEqualToString:scheme])
            {
                NSArray *urlSchemes = urlType[@"CFBundleURLSchemes"];
                for(NSString *urlScheme in urlSchemes)
                    return urlScheme;
            }

        }
    }

    return @"";
}

@end
