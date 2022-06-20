
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapController extends GetxController{
  @override
    LatLng userLocation=LatLng(37.785834, -122.406417);
  String ? administrativeArea='nfjbfhbhf';
  String ? street='haram /egypt';
  double distance = 200.0;


  void onInit() {
    userLocation;

}
  getCurrentLocation()async{
    LocationPermission permission;
    permission = await Geolocator.requestPermission();
    final position=await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high
    );
    userLocation = LatLng(position.latitude, position.longitude)  ;
    print(userLocation);
    print(position);
    return userLocation;
  }


}


