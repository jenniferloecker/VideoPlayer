//
//  RNTVideoManager.m
//  app
//
//  Created by Jennifer Loecker on 10/22/20.
//

#import <React/RCTViewManager.h>
#import "VideoView.h"

@interface RTNVideoManager: RCTViewManager
@end

@implementation RTNVideoManager
RCT_EXPORT_MODULE(RNTVideo)

- (UIView *) view {
  VideoView *view = [[VideoView alloc] init];
  return view;
}

@end
