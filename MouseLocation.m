#import <AppKit/AppKit.h>
#include <math.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    NSRect screenRect = [[NSScreen mainScreen] frame];

    CGFloat screenHeight = NSHeight(screenRect);

    NSPoint mouseLoc = [NSEvent mouseLocation]; //get current mouse position

	NSString* locString = [NSString stringWithFormat:@"%ld,%ld", lroundf(mouseLoc.x),lroundf(screenHeight-mouseLoc.y)];
	printf("%s\n", [locString UTF8String]);
	
    [pool drain];
    return 0;
}