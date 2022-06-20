import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_places_hoc081098/flutter_google_places_hoc081098.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:google_api_headers/google_api_headers.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';

import '../../componant/map_bottom_pill.dart';
import '../../constants/constant.dart';
import 'controller/map_controller.dart';

class MapScreen extends StatefulWidget {
  @override
  State<MapScreen> createState() => _MapScreenState();
}
final controllerm=Get.put(MapController());
class _MapScreenState extends State<MapScreen> {
  // String googleApikey = "GOOGLE_MAP_API_KEY";

  GoogleMapController? mapController;
   CameraPosition cameraPosition=CameraPosition(
     target:controllerm.userLocation,
    zoom: 18
  );


  String location = "Search Location";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("حدد المكان علي الخريطه"),
          backgroundColor: K.mainColor,
        ),
        body: Stack(
            children:[
              GoogleMap( //Map widget from google_maps_flutter package
                zoomGesturesEnabled: true,
                myLocationEnabled:true,
                initialCameraPosition: cameraPosition,
                mapType: MapType.normal,
                 onMapCreated: (controller) {
                  setState(() {
                    controllerm.getCurrentLocation();
                    mapController = controller;
                  });
                },
                onCameraMove: (CameraPosition cameraPositiona) {
                  cameraPosition = cameraPositiona;
                },
                onCameraIdle: () async {
                  List<Placemark> placemarks = await placemarkFromCoordinates(cameraPosition.target.latitude, cameraPosition.target.longitude);
                  setState(() {
                    location = "${placemarks.first.administrativeArea}, ${placemarks.first.street}";
                print(cameraPosition.target.latitude);
                  });
                },
              ),

              Center( //picker image on google map
                child: Image.asset("assets/images/picker.png", width: 80,),
              ),

              Positioned(  //search input bar
                  top:10,
                  child: InkWell(
                      onTap: () async {
                        var place = await PlacesAutocomplete.show(
                            context: context,
                            apiKey: K.googleKeyAPi,
                            mode: Mode.overlay,
                            types: [],
                            strictbounds: false,
                            language: 'ar',
                            radius: 1000000,
                            components: [Component(Component.country, 'ksa')],
                            //google_map_webservice package np
                            onError: (err){
                              print(err);
                            }
                        );

                        if(place != null){
                          setState(() {
                            location = place.description.toString();
                          });
                          //form google_maps_webservice package
                          final plist = GoogleMapsPlaces(
                            apiKey:K.googleKeyAPi,
                            apiHeaders: await GoogleApiHeaders().getHeaders(),
                            //from google_api_headers package
                          );
                          String placeid = place.placeId ?? "0";
                          final detail = await plist.getDetailsByPlaceId(placeid);
                          final geometry = detail.result.geometry!;
                          final lat = geometry.location.lat;
                          final lang = geometry.location.lng;
                          var newlatlang = LatLng(lat, lang);

                          //move map camera to selected place with animation
                          mapController?.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: newlatlang, zoom: 17)));
                        }
                      },
                      child:Padding(
                        padding: EdgeInsets.all(15),
                        child: Card(
                          child: Container(
                              padding: EdgeInsets.all(0),
                              width: MediaQuery.of(context).size.width - 40,
                              child: ListTile(
                                leading: Image.asset("assets/images/picker.png", width: 25,),
                                title:Text(location, style: TextStyle(fontSize: 18),),
                                trailing: Icon(Icons.search),
                                dense: true,
                              )
                          ),
                        ),
                      )
                  )
              ),
              Positioned(
                  left: -20,
                  right: -20,
                  bottom: -15,
                 child: MapBottomPill()
              ),


            ]
        )
    );
  }
}
