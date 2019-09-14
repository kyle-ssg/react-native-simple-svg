/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, {Fragment} from 'react';
import SVG from  'react-native-simple-svg';
import {
  SafeAreaView,
  StyleSheet,
  StatusBar,
} from 'react-native';

const App = () => {
  return (
    <Fragment>
      <StatusBar barStyle="dark-content" />
      <SafeAreaView>
       <SVG
           style={styles.image}
           source={{uri:"https://upload.wikimedia.org/wikipedia/commons/3/30/Vector-based_example.svg"}}/>
      </SafeAreaView>
    </Fragment>
  );
};

const styles = StyleSheet.create({
  image: {
    width: 100,
    height:100
  }
});

export default App;
