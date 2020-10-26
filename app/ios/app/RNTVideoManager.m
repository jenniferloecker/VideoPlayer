//
//  RNTVideoManager.m
//  app
//
//  Created by Jennifer Loecker on 10/22/20.
//

#import <React/RCTViewManager.h>
#import "VideoView.h"

@interface RTNVideoManager: RCTViewManager
@property VideoView *videoView;
@end

@implementation RTNVideoManager
RCT_EXPORT_MODULE(RNTVideo)
RCT_EXPORT_METHOD(pushPlay)
{
  [self.videoView play];
}

RCT_EXPORT_METHOD(pushPause)
{
  [self.videoView pause];
}

RCT_EXPORT_METHOD(pushSeek)
{
  [self.videoView seek];
}

- (UIView *) view {
  [self setVideoView:[[VideoView alloc] init]];
  [self.videoView initializePlayer];
  [self.videoView play];
  return self.videoView;
}

@end
