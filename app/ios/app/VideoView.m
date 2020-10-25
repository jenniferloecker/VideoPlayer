//
//  VideoView.m
//  app
//
//  Created by Jennifer Loecker on 10/22/20.
//

#import "VideoView.h"
#import <AVKit/AVKit.h>

@interface VideoView()
@property AVPlayer *player;
@end

@implementation VideoView : UIView

-(instancetype)init {
  if (self = [super init]) {
    [self initializePlayer];
  }
  return self;
}

-(void)initializePlayer {
  NSURL *videoURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"hello" ofType:@"mp4"]];
  AVURLAsset *asset = [[AVURLAsset alloc] initWithURL:videoURL options: @{} ];
  AVPlayerItem *item = [AVPlayerItem playerItemWithAsset:asset];
  [self setPlayer:[AVPlayer playerWithPlayerItem:item]];
}

-(void)play {
  [self.player play];
}
@end
