import 'package:shared_preferences/shared_preferences.dart';

const String deviceName = "deviceName";
const String deviceAddress = "deviceAddress";

Future setDeviceData(name, address) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString(deviceName, name);
  prefs.setString(deviceAddress, address);
}

Future<String?> getDeviceName() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString(deviceName) ?? "";
}

Future<String?> getDeviceAddress() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString(deviceAddress) ?? "66:22:AC:21:54:E8";
}

Future clearDevice() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString(deviceName, "");
  prefs.setString(deviceAddress, "");
}