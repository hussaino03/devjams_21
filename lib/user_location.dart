// import library
import 'package:geolocator/geolocator.dart';

// create variables
Position _currentPosition;
String _currentAddress;

// function to identify the location of the user
final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;

// get the user location
_getCurrentLocation() {
  geolocator
      .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
      .then((Position position) {
    setState(() {
      _currentPosition = position;
    });
    _getAddressFromLatLng();
  }).catchError((e) {
    print(e);
  });
}

// get address from coordinates
_getAddressFromLatLng() async {
  try {
    List<Placemark> p = await geolocator.placemarkFromCoordinates(
        _currentPosition.latitude, _currentPosition.longitude);
    Placemark place = p[0];
    setState(() {
      _currentAddress =
      "${place.locality}, ${place.postalCode}, ${place.country}";
    });
  } catch (e) {
    print(e);
  }
}

// display address on screen
if (_currentPosition != null && _currentAddress != null) Text(_currentAddress),
  string address = "${place.locality}, ${place.postalCode}, ${place.country}";
