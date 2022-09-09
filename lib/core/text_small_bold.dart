import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking_app/const/hotels_const.dart';

class TextSmallBold extends StatelessWidget {
  const TextSmallBold({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      // Gelen veri yanlış ise verinin yerine Stop içindeki değer yazılsın.
      text ?? HotelConst.stop,
      style: Theme.of(context)
          .textTheme
          .subtitle2
          ?.copyWith(fontWeight: FontWeight.bold),
    );
  }
}
