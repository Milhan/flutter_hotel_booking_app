import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking_app/const/hotels_const.dart';

class ElevatedButtonHeight extends StatelessWidget {
  const ElevatedButtonHeight({
    Key? key,
    required this.height,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  final double height;
  final void Function() onPressed;
  final String text;
  final int _height15 = 15;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: HotelConst.borderRadiusCircular50)),
      onPressed: onPressed,
      child: SizedBox(
        height: height / _height15,
        child: Center(
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: HotelConst.color_white),
          ),
        ),
      ),
    );
  }
}
