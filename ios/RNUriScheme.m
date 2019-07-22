
#import "RNUriScheme.h"

@implementation RNUriScheme

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
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
