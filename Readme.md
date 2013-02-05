```
GCDTimer *timer = [GCDTimer scheduledTimerWithTimeInterval:1.0f repeats:YES block:^{
	dispatch_async(dispatch_get_main_queue(), ^{
		// Do repeated work here
	});
}];
```
