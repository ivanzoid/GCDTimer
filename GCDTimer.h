//
//  GCDTimer.h
//

typedef void(^GCDTimerBlock)(void);

@interface GCDTimer : NSObject

- (id) initScheduledTimerWithTimeInterval:(NSTimeInterval)seconds repeats:(BOOL)repeats block:(GCDTimerBlock)block;

+ (GCDTimer *) scheduledTimerWithTimeInterval:(NSTimeInterval)seconds repeats:(BOOL)repeats block:(GCDTimerBlock)block;

- (void) invalidate;

@end
