import React from 'react';
import {
  requireNativeComponent,
  View,
  Button,
  NativeModules,
} from 'react-native';

class VideoView extends React.Component {
  handlePlay() {
    var VideoManager = NativeModules.RNTVideo;
    VideoManager.pushPlay();
  }

  handlePause() {
    var VideoManager = NativeModules.RNTVideo;
    VideoManager.pushPause();
  }

  handleSeek() {
    var VideoManager = NativeModules.RNTVideo;
    VideoManager.pushSeek();
  }

  render() {
    return (
      <View style={{flex: 1, alignItems: 'center'}}>
        <RNTVideo {...this.props} />
        <View style={{flex: 1, justifyContent: 'flex-end', marginBottom: 36}}>
          <Button title="Play" onPress={this.handlePlay} />
          <Button title="Pause" onPress={this.handlePause} />
          <Button title="Seek Forward" onPress={this.handleSeek} />
        </View>
      </View>
    );
  }
}
var RNTVideo = requireNativeComponent('RNTVideo', VideoView);

module.exports = VideoView;
