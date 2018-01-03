// valid for iOS 4 - 11.1
@interface SBApplicationIcon
- (NSString *)applicationBundleID;
@end

// valid for iOS 3 - 11.1
%hook SBIconModel

// requires a respring, only called on SpringBoard load
- (BOOL)isIconVisible:(SBApplicationIcon *)icon {
    // Just add any bundle IDs you want to this array
    // LiberiOS: com.newosxbook.jb.liberios
    // H3lix: org.tihmstar.h3lix
    // Yalu102: kim.cracksby.yalu102
    // Phoenix: supplies.wall.phoenix
    // mach_portal: com.qwertyoruiopz.zmach-portal
    // extra_recipe: com.example.extra-recipe
    NSArray<NSString *> *hide = @[@"com.newosxbook.jb.liberios", @"org.tihmstar.h3lix", @"kim.cracksby.yalu102", @"supplies.wall.phoenix", @"com.qwertyoruiopz.zmach-portal", @"com.example.extra-recipe"];
    if ([hide containsObject:icon.applicationBundleID]) {
        return NO;
    }
    
    return %orig;
}

%end
