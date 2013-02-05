//
//  GCDTimer.h
//

typedef void(^GCDTimerBlock)(void);

@interface GCDTimer : NSObject

/* block is called on supplied queue */
- (id) initScheduledTimerWithTimeInterval:(NSTimeInterval)seconds repeats:(BOOL)repeats block:(GCDTimerBlock)block queue:(dispatch_queue_t)queue;

/* block is called on main queue */
- (id) initScheduledTimerWithTimeInterval:(NSTimeInterval)seconds repeats:(BOOL)repeats block:(GCDTimerBlock)block;

/* block is called on supplied queue */
+ (GCDTimer *) scheduledTimerWithTimeInterval:(NSTimeInterval)seconds repeats:(BOOL)repeats block:(GCDTimerBlock)block queue:(dispatch_queue_t)queue;
;

/* block is called on main queue */
+ (GCDTimer *) scheduledTimerWithTimeInterval:(NSTimeInterval)seconds repeats:(BOOL)repeats block:(GCDTimerBlock)block;

- (void) invalidate;

@end
