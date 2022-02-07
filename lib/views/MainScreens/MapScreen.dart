// ignore_for_file: file_names

import 'package:atar/views/DetailsPlace/DetailsPlaceScreen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
          zoomControlsEnabled: false,
          mapType: MapType.satellite,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
          child: Container(
            height: 55.h,
            width: 335.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromRGBO(250, 250, 250, 1),
            ),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                fontFamily: "MontserratMedium",
                fontSize: 14.sp,
              ),
              decoration: InputDecoration(
                hintText: 'Search bar',
                hintStyle: TextStyle(
                  fontFamily: "MontserratMedium",
                  fontSize: 14.sp,
                ),
                filled: true,
                fillColor: const Color.fromRGBO(250, 250, 250, 1),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 515.h,
          child: SizedBox(
            height: 86.h,
            width: MediaQuery.of(context).size.width,
            child: SizedBox(
              height: 200.h,
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider(
                options: CarouselOptions(height: 400.0),
                items: [
                  Container(
                    height: 86.h,
                    width: 265.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          child: Container(
                            height: 64.h,
                            width: 64.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Theme.of(context).backgroundColor,
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'https://images.unsplash.com/photo-1601290006882-9dcdfbd809ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
                                  scale: 2.0,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Spacer(),
                            Text(
                              'Bab Al Mansour',
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black,
                                height: 1.6,
                                fontFamily: 'MontserratSemiBold',
                              ),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Icon(
                                  FeatherIcons.navigation,
                                  size: 15.w,
                                  color: Theme.of(context).backgroundColor,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  '1.5km left',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                    height: 1.6,
                                    fontFamily: 'MontserratRegular',
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
