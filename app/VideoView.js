import React from 'react';
import {requireNativeComponent, View, Button} from 'react-native';

export default class VideoView extends React.Component {
  render() {
    return (
      <View style={{flex: 1, alignItems: 'center'}}>
        <RNTVideo {...this.props} />
        <View style={{flex: 1, justifyContent: 'flex-end', marginBottom: 36}}>
          <Button title="Play" />
          <Button title="Pause" />
          <Button title="Seek Forward" />
          <Button title="Seek Backward" />
        </View>
      </View>
    );
  }
}
var RNTVideo = requireNativeComponent('RNTVideo', VideoView);

module.exports = VideoView;
