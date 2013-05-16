// Reference: http://stackoverflow.com/questions/7608632/how-do-i-get-the-current-version-of-my-ios-project-in-code
#import <UIKit/UIKit.h>

@interface UIApplication (Version)

+ (NSString *) appVersion;
+ (NSString *) build;
+ (NSString *) versionBuild;
@end
