# react-native-simple-svg
This provides a fully native approach to rendering remote SVGs and offers superior performance to react-native-svg and react-native-svg-uri.
## Installation
```
npm i react-native-simple-svg --save
```

## iOS Installation
This library uses SVGKit, the following will need to be added to your PodFile.
```
Pod 'SVGKit'
```
***Note if you're facing errors from SVGKit such as "duplicate interface definition for class Text", use the following:***
```
  pod 'SVGKit', :git => 'https://github.com/kyle-ssg/SVGKit', :branch => '3.x'
```


## Usage
```

import SVG from  'react-native-simple-svg';
...
<SVG style={{...}} source={{uri:'...'}}/>
```

This library supports autolinking for ReactNative >0.60.0, for older version see https://facebook.github.io/react-native/docs/linking-libraries-ios.


### Example performance difference
This illustrates the render speed difference when using this library.
<img src="http://g.recordit.co/ckIWCgPeii.gif"/>
