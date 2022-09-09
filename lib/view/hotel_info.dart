import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking_app/const/hotels_const.dart';
import 'package:flutter_hotel_booking_app/core/context_text.dart';
import 'package:flutter_hotel_booking_app/core/elevatedButton_height.dart';
import 'package:flutter_hotel_booking_app/view/hotel_home.dart';

class HotelInfo extends StatelessWidget {
  const HotelInfo({super.key});

  final double _height = 2.7;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(children: [
        _imageFullHeight(context),
        _columContainer(height, width, context),
      ]),
    );
  }

  Column _columContainer(double height, double width, BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: height / _height,
          width: width,
          decoration: const BoxDecoration(
            color: HotelConst.color_white,
            borderRadius: BorderRadius.only(
              topRight: HotelConst.radius40,
              topLeft: HotelConst.radius40,
            ),
          ),
          child: Padding(
            padding: HotelConst.paddingGeneral20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _textTitle(context),
                HotelConst.sizedBoxHeigt10,
                const ContextText(text: HotelConst.info_context),
                HotelConst.sizedBoxHeigt30,
                ElevatedButtonHeight(
                    height: height,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const HomeView()));
                    },
                    text: HotelConst.info_elevatedButton),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Text _textTitle(BuildContext context) {
    return Text(
      HotelConst.into_title,
      style: Theme.of(context).textTheme.headline3?.copyWith(
          fontWeight: FontWeight.w300, color: HotelConst.color_black),
    );
  }

  Image _imageFullHeight(BuildContext context) {
    return Image.asset(
      HotelConst.image_one,
      fit: BoxFit.cover,
      height: MediaQuery.of(context).size.height,
    );
  }
}
