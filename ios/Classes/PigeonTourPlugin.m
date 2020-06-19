#import "PigeonTourPlugin.h"
#import "Messages.h"

@interface PigeonTourPlugin () <FLTApi>
@end

@implementation PigeonTourPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    PigeonTourPlugin* instance = [[PigeonTourPlugin alloc] init];
    FLTApiSetup([registrar messenger], instance);
}

- (nullable FLTSearchReply *)search:(nonnull FLTSearchRequest *)input error:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    if ([@"getPlatformVersion" isEqualToString:input.query]) {
        FLTSearchReply *reply = [[FLTSearchReply alloc] init];
        reply.result = [@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]];
        return reply;
    } else {
        return nil;
    }
}

@end
