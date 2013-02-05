//
//  GCDTimer.m
//

#import "GCDTimer.h"

#if (TARGET_OS_IPHONE && (__IPHONE_OS_VERSION_MIN_REQUIRED >= 60000)) || (MAC_OS_X_VERSION_MIN_REQUIRED >= 1080)
    #define DispatchRelease(q)
#else
    #define DispatchRelease(q) (dispatch_release(q))
#endif

@implementation GCDTimer {
    dispatch_source_t timer;
    dispatch_queue_t queue;
}

- (id) initScheduledTimerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(GCDTimerBlock)block
{
    if ((self = [super init]))
    {
        queue = dispatch_queue_create("GCDTimer", NULL);
        timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);

        dispatch_source_set_timer(timer,
                                  dispatch_time(DISPATCH_TIME_NOW, 0),
                                  interval * NSEC_PER_SEC,
                                  0);

        dispatch_source_set_event_handler(timer, ^
        {
            if (block) {
                block();
            }
            if (!repeats) {
                dispatch_source_cancel(timer);
            }
        });

        dispatch_resume(timer);
    }
    return self;
}

- (void) dealloc
{
    dispatch_source_cancel(timer);
    DispatchRelease(timer);
    DispatchRelease(queue);
}

- (void) invalidate
{
    dispatch_source_cancel(timer);
}

+ (GCDTimer *) scheduledTimerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(GCDTimerBlock)block
{
    return [[GCDTimer alloc] initScheduledTimerWithTimeInterval:interval repeats:repeats block:block];
}

@end
