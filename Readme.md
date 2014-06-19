# GCDTimer

[![Version](https://img.shields.io/cocoapods/v/GCDTimer.svg?style=flat)](http://cocoadocs.org/docsets/GCDTimer)
[![License](https://img.shields.io/cocoapods/l/GCDTimer.svg?style=flat)](http://cocoadocs.org/docsets/GCDTimer)
[![Platform](https://img.shields.io/cocoapods/p/GCDTimer.svg?style=flat)](http://cocoadocs.org/docsets/GCDTimer)

## About

`GCDTimer` is implementation of NSTimer-like class with API close to original, but done on top of Apple's GCD (Grand Central Dispatch).

## Usage

You use GCDTimer almost the same as you use NSTimer:

    GCDTimer *timer;

	...

	timer = [GCDTimer scheduledTimerWithTimeInterval:1.0 repeats:YES block:^{
		// Your repeated action here.
    }];

See demo for more details (you may quickly see demo by using conventient `pod try` command, i.e. `pod try GCDTimer`)

## Installation

GCDTimer is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "GCDTimer"

## Author

Ivan Zezyulya, GCDTimer@zoid.cc

## License

GCDTimer is available under the MIT license. See the LICENSE file for more info.

