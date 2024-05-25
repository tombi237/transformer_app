import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late GoogleMapController mapController;
  late Marker transformerMarker;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: LatLng(45.521563, -122.677433),
          zoom: 11.0,
        ),
        markers: Set<Marker>.of(<Marker>[transformerMarker]),
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {
      transformerMarker = Marker(
        markerId: MarkerId('transformer'),
        position: LatLng(45.521563, -122.677433),
        infoWindow: InfoWindow(
          title: 'Transformer',
          snippet: 'Description du transformateur',
        ),
      );
    });
  }
}
