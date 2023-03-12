import 'package:geolocator/geolocator.dart';

class Location {
  late double longitude;
  late double latitude;
  late String cityName;
  void getCurrentPosition() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }

  // void getCityName() async {
  //   try {
  //     getCurrentPosition();
  //     final coordinates = Coordinates(latitude, longitude);
  //     List<Address> addresses =
  //         await Geocoder.local.findAddressesFromCoordinates(coordinates);
  //     Address first = addresses.first;
  //     cityName = first.locality;
  //   } catch (e) {
  //     print(e);
  //   }
  // }

}
