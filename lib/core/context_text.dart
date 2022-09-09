import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking_app/const/hotels_const.dart';

class ContextText extends StatelessWidget {
  const ContextText({super.key, required this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? HotelConst.stop,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: HotelConst.color_grey,
          ),
    );
  }
}
