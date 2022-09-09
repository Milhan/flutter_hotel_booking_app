import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking_app/const/hotels_const.dart';
import 'package:flutter_hotel_booking_app/view/hotel_detail.dart';
import 'package:flutter_hotel_booking_app/view/hotel_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: HotelInfo(),
    );
  }
}
