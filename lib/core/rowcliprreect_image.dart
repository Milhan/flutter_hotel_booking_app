import 'package:flutter/material.dart';

import '../const/hotels_const.dart';

class RowClipRRectImage extends StatelessWidget {
  const RowClipRRectImage({Key? key, required this.image}) : super(key: key);

  final String image;
  final double _heightRow = 3.7;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: HotelConst.borderRadiusCircular10,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height / _heightRow,
      ),
    );
  }
}
