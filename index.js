import { NativeModules } from 'react-native';

const { RNUriScheme } = NativeModules;

export default {
  getUriScheme: function () {
    return RNUriScheme.uriScheme
  }
};
