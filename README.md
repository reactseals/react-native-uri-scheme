
# react-native-uri-scheme

## Getting started

`$ npm install react-native-uri-scheme --save`

### Mostly automatic installation

`$ react-native link react-native-uri-scheme`

### Manual installation


#### iOS

1. Inert `pod 'RNUriScheme', :path => '../node_modules/react-native-uri-scheme'` into your PodFile

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNReactNativeUriSchemePackage;` to the imports at the top of the file
  - Add `new RNReactNativeUriSchemePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-uri-scheme'
  	project(':react-native-uri-scheme').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-uri-scheme/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-uri-scheme')
  	```


## Usage
```javascript
import RNUriScheme from 'eact-native-uri-scheme';

RNUriScheme.getUriScheme()
```
