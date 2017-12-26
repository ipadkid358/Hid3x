// valid for iOS 4 - 11.1
@interface SBApplicationIcon
- (NSString *)applicationBundleID;
@end

// valid for iOS 3 - 11.1
%hook SBIconModel

// requires a respring, only called on SpringBoard load
- (BOOL)isIconVisible:(SBApplicationIcon *)icon {
    // Just add any bundle IDs you want to this array
    // LiberIOS: com.newosxbook.jb.liberios
    // H3lix: org.tihmstar.h3lix
    // Yalu102: kim.cracksby.yalu102
    // Phoenix: supplies.wall.phoenix
    NSArray *hide = @[@"com.newosxbook.jb.liberios", @"org.tihmstar.h3lix", @"kim.cracksby.yalu102", @"supplies.wall.phoenix"];
    if ([hide containsObject:icon]) {
        return NO;
    }
    
    return %orig;
}

%end
