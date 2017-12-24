@interface SBApplicationIcon
- (NSString *)applicationBundleID;
@end

%hook SBIconModel

- (BOOL)isIconVisible:(SBApplicationIcon *)icon {
    if ([icon.applicationBundleID isEqualToString:@"org.tihmstar.h3lix"]) {
        return NO;
    }
    
    return %orig;
}

%end
