#import <OneSignal/OneSignal.h>

@implementation AppDelegate : NSObject

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

   // Replace '11111111-2222-3333-4444-0123456789ab' with your OneSignal App ID.
   [OneSignal initWithLaunchOptions:launchOptions
                              appId:@"11111111-2222-3333-4444-0123456789ab"
   				 handleNotificationAction:nil
                            settings:@{kOSSettingsKeyAutoPrompt: @false}];
   OneSignal.inFocusDisplayType = OSNotificationDisplayTypeNotification;

   // Recommend moving the below line to prompt for push after informing the user about
   //   how your app will use them.
   [OneSignal promptForPushNotificationsWithUserResponse:^(BOOL accepted) {
        NSLog(@"User accepted notifications: %d", accepted);
   }];

  // Call syncHashedEmail anywhere in your iOS app if you have the user's email.
  // This improves the effectiveness of OneSignal's "best-time" notification scheduling feature.
  // [OneSignal syncHashedEmail:userEmail];

   return YES;
}
@end

