// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_polyline_points/flutter_polyline_points.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:parkpal/core/constants/color_manager.dart';
// import 'package:parkpal/core/constants/icons_manager.dart';
// import 'package:parkpal/core/utils/static_data.dart';
// import 'package:parkpal/core/widgets/custom_app_bar.dart';
// import 'package:parkpal/features/home/presentation/cubit/home_cubit.dart';
// import '../widgets/custom_draggable_sheet.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final Completer<GoogleMapController> _controller =
//       Completer<GoogleMapController>();
//   Set<Polyline> polylines = {};

//   final Map<PolylineId, Polyline> _polylines = {};

//   static const CameraPosition _kGooglePlex = CameraPosition(
//     target: LatLng(27.719426, 85.296444),
//     zoom: 14.4746,
//   );

//   BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;

//   void addCustomIcon() {
//     BitmapDescriptor.asset(const ImageConfiguration(), IconsManager.fees1,
//             height: 90.h, width: 150.w)
//         .then((icon) {
//       setState(() {
//         markerIcon = icon;
//       });
//     });
//   }

//   void setPolyLines() async {
//     print("herreeee");
//     try {
//       PolylinePoints polylinePoints = PolylinePoints();
//       PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
//         googleApiKey: "AIzaSyCgesyrCcw3l-Z_zzva8XWJt4LLkkP7u18",
//         request: PolylineRequest(
//           origin: PointLatLng(StaticData.parkingData[0].latlng!.latitude,
//               StaticData.parkingData[0].latlng!.longitude),
//           destination: PointLatLng(location1.latitude, location1.longitude),
//           // PointLatLng(StaticData.parkingData[5].latlng!.latitude,
//           //     StaticData.parkingData[5].latlng!.longitude),
//           mode: TravelMode.driving,
//           wayPoints: [PolylineWayPoint(location: "Sabo, Yaba Lagos Nigeria")],
//         ),
//       );
//       print(result.points);
//     } catch (ex) {
//       print("error:$ex");
//     }
//     print("done!!!");
//   }

//   Future<List<LatLng>> fetchPolylinePoints() async {
//     final polylinePoints = PolylinePoints();

//     final result = await polylinePoints.getRouteBetweenCoordinates(
//       googleApiKey: "AIzaSyCgesyrCcw3l-Z_zzva8XWJt4LLkkP7u18",
//       request: PolylineRequest(
//         origin: PointLatLng(StaticData.parkingData[0].latlng!.latitude,
//             StaticData.parkingData[0].latlng!.longitude),
//         destination: PointLatLng(location1.latitude, location1.longitude),
//         // PointLatLng(StaticData.parkingData[5].latlng!.latitude,
//         //     StaticData.parkingData[5].latlng!.longitude),
//         mode: TravelMode.driving,
//         // wayPoints: [PolylineWayPoint(location: "Sabo, Yaba Lagos Nigeria")],
//       ),
//     );

//     if (result.points.isNotEmpty) {
//       print(result.points);
//       return result.points
//           .map((point) => LatLng(point.latitude, point.longitude))
//           .toList();
//     } else {
//       debugPrint(result.errorMessage);
//       return [];
//     }
//   }

//   Future<void> generatePolyLineFromPoints(
//       List<LatLng> polylineCoordinates) async {
//     const id = PolylineId('polyline');
//     final polyline = Polyline(
//       polylineId: id,
//       color: Colors.blueAccent,
//       points: polylineCoordinates,
//       width: 5,
//     );

//     setState(() => _polylines[id] = polyline);
//   }

//   Future<void> initMap() async {
//     print("started generating");
//     var points = await fetchPolylinePoints();
//     generatePolyLineFromPoints(points);
//     print("stopped generating");
//   }

//   @override
//   void initState() {
//     addCustomIcon();
//     // setPolyLines();
//     // polylinesDraw();
//     initMap();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
// // default constructor
//     return Scaffold(
//       backgroundColor: AppColors.mainBGColor,
//       appBar: const CustomAppBar(
//         title: "Parker",
//       ),
//       body: BlocBuilder<HomeCubit, HomeState>(
//         builder: (context, state) {
//           final homeCubit = context.read<HomeCubit>();
//           return Container(
//             decoration: const BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topRight: Radius.circular(24),
//                   topLeft: Radius.circular(24),
//                 )),
//             child: Stack(
//               children: [
//                 GoogleMap(
//                   mapType: MapType.normal,
//                   initialCameraPosition: _kGooglePlex,
//                   onMapCreated: (GoogleMapController controller) {
//                     _controller.complete(controller);
//                   },
//                   markers: {
//                     ...StaticData.parkingData.map(
//                       (e) => Marker(
//                           markerId: MarkerId(e.latlng.toString()),
//                           icon: markerIcon,
//                           onTap: () {
//                             setPolyLines();
//                             print("setting");
//                             showDialog(
//                                 context: context,
//                                 builder: (BuildContext context) {
//                                   return AlertDialog(
//                                     content: Text(e.parkingSpot!),
//                                   );
//                                 });
//                           },
//                           position: e.latlng!),
//                     )
//                   },
//                   polylines: Set<Polyline>.of(_polylines.values),
//                 ),
//                 const CustomDraggableSheet()
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

//eta bata hai

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

import '../../../../core/constants/icons_manager.dart';
import '../../../../core/utils/static_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final locationController = Location();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(27.719426, 85.296444),
    zoom: 14.4746,
  );

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  LatLng? currentPosition;
  LocationData? locationData;
  Map<PolylineId, Polyline> polylines = {};

  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;

  void addCustomIcon() {
    BitmapDescriptor.asset(const ImageConfiguration(), IconsManager.fees1,
            height: 90.h, width: 150.w)
        .then((icon) {
      setState(() {
        markerIcon = icon;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) async => await initializeMap());
    addCustomIcon();
  }

  Future<void> initializeMap() async {
    await fetchLocationUpdates();
    final coordinates = await fetchPolylinePoints();
    generatePolyLineFromPoints(coordinates);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: currentPosition == null
            ? const Center(child: CircularProgressIndicator())
            : GoogleMap(
                initialCameraPosition: _kGooglePlex,
                mapType: MapType.normal,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
                markers: {
                  ...StaticData.parkingData.map(
                    (e) => Marker(
                        markerId: MarkerId(e.latlng.toString()),
                        icon: markerIcon,
                        onTap: () {
                          print("setting");
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  content: Text(e.parkingSpot!),
                                );
                              });
                        },
                        position: e.latlng!),
                  )
                },
                polylines: Set<Polyline>.of(polylines.values),
              ),
      );

  Future<void> fetchLocationUpdates() async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await locationController.serviceEnabled();
    if (serviceEnabled) {
      serviceEnabled = await locationController.requestService();
    } else {
      return;
    }

    permissionGranted = await locationController.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await locationController.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    locationData = await locationController.getLocation();
    if (locationData != null) {
      setState(() {
        currentPosition = LatLng(
          locationData!.latitude!,
          locationData!.longitude!,
        );
      });
    }

    locationController.onLocationChanged.listen((currentLocation) {
      print("this is position:$currentPosition");
      if (currentLocation.latitude != null &&
          currentLocation.longitude != null) {
        setState(() {
          currentPosition = LatLng(
            currentLocation.latitude!,
            currentLocation.longitude!,
          );
        });
      }
    });
  }

  Future<List<LatLng>> fetchPolylinePoints() async {
    final polylinePoints = PolylinePoints();

    final result = await polylinePoints.getRouteBetweenCoordinates(
        googleApiKey: "AIzaSyCgesyrCcw3l-Z_zzva8XWJt4LLkkP7u18",
        request: PolylineRequest(
            destination: PointLatLng(
                currentPosition!.latitude, currentPosition!.longitude),
            origin: PointLatLng(StaticData.parkingData[0].latlng!.latitude,
                StaticData.parkingData[0].latlng!.longitude),
            mode: TravelMode.driving));

    if (result.points.isNotEmpty) {
      print(result.points);
      return result.points
          .map((point) => LatLng(point.latitude, point.longitude))
          .toList();
    } else {
      debugPrint(result.errorMessage);
      return [];
    }
  }

  Future<void> generatePolyLineFromPoints(
      List<LatLng> polylineCoordinates) async {
    const id = PolylineId('polyline');

    final polyline = Polyline(
      polylineId: id,
      color: Colors.blueAccent,
      points: polylineCoordinates,
      width: 5,
    );

    setState(() => polylines[id] = polyline);
  }
}
