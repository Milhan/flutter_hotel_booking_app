import 'package:flutter/material.dart';

import '../const/hotels_const.dart';

class ContainerBackGroundGrey extends StatelessWidget {
  const ContainerBackGroundGrey({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final Widget widget;
  final double _height = 20;
  final double _width = 10;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / _height,
        width: MediaQuery.of(context).size.width / _width,
        decoration: BoxDecoration(
          borderRadius: HotelConst.borderRadiusCircular50,
          color: HotelConst.color_grey,
        ),
        child: widget);
  }
}
