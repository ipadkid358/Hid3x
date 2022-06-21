// valid for iOS 4 - 11.1
@interface SBApplicationIcon
- (NSString *)applicationBundleID;
@end

// valid for iOS 3 - 11.1
%hook SBIconModel

// requires a respring, only called on SpringBoard load
- (BOOL)isIconVisible:(SBApplicationIcon *)icon {
    // Just add any bundle IDs you want to this array
    NSArray<NSString *> *hide = @[
        @"com.newosxbook.jb.liberios",      // LiberiOS
        @"org.tihmstar.h3lix",              // h3lix
        @"kim.cracksby.yalu102",            // Yalu102
        @"supplies.wall.phoenix",           // Phoenix
        @"com.qwertyoruiopz.zmach-portal",  // mach_portal
        @"com.example.extra-recipe",        // extra_recipe
        @"org.coolstar.electra",            // Electra
        @"zone.sparkes.MeridianJB",         // Meridian
        @"net.sticktron.g0blin",            // g0blin
        @"org.tihmstar.doubleH3lix"         // doubleH3lix
        @"com.sxx.sockH3lix"                // sockH3lix
    ];
    
    if ([hide containsObject:icon.applicationBundleID]) {
        return NO;
    }
    
    return %orig;
}

%end
