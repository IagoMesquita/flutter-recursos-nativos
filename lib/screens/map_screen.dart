import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:recusos_nativos/models/place.dart';

class MapScreen extends StatefulWidget {
  final PlaceLocation initialLocation;
  const MapScreen({
    super.key,
    this.initialLocation =
        const PlaceLocation(latitude: -2.9229922, longitude: -41.7705886),
  });

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Selecione...'),
      ),
      body: GoogleMap(
          initialCameraPosition: CameraPosition(
        target: LatLng(
          widget.initialLocation.latitude,
          widget.initialLocation.longitude,
        ),
        zoom: 13
      )),
    );
  }
}
