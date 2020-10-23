//
//  VideoView.m
//  app
//
//  Created by Jennifer Loecker on 10/22/20.
//

#import "VideoView.h"
#import <AVKit/AVKit.h>

@interface VideoView()
@property AVPlayerViewController *playerViewController;
@end

@implementation VideoView : UIView

-(void) layoutSubviews {
  [super layoutSubviews];
  
  if (self.playerViewController == nil) {
    [self createVideoViewController];
  } else {
    [self.playerViewController.view setFrame:self.bounds];
  }
}

-(void) createVideoViewController {
  NSURL *videoURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"tenor" ofType:@"mp4"]];
  
  AVPlayerItem *item = [AVPlayerItem playerItemWithURL:videoURL];
  AVPlayer *player = [AVPlayer playerWithPlayerItem:item];
  self.playerViewController = [[AVPlayerViewController alloc] init];
  [self.playerViewController setPlayer:player];
  UIViewController *rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
  [rootViewController presentViewController:self.playerViewController animated:true completion:^{
    [player play];
  }];
}
@end
