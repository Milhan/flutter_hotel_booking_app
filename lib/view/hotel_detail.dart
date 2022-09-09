import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking_app/const/hotels_const.dart';
import 'package:flutter_hotel_booking_app/core/container_background_grey.dart';
import 'package:flutter_hotel_booking_app/core/elevatedButton_height.dart';
import 'package:flutter_hotel_booking_app/core/text_large_bold.dart';
import 'package:flutter_hotel_booking_app/core/text_small_bold.dart';

class HotelDetail extends StatelessWidget {
  const HotelDetail({
    super.key,
    required this.image,
    required this.title,
    required this.locationText,
    required this.price,
    required this.starText,
    required this.priceText,
  });

  final String image;
  final String title;
  final String locationText;
  final String price;
  final String starText;
  final String priceText;

  final _imageHeight = 2.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              _stackImage(context),
              _PositinedIconLeft(),
              _PositinedIconRight(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 15, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _rowTitleStarText(context),
                HotelConst.sizedBoxHeigt5,
                _rowLocationText(),
                HotelConst.sizedBoxHeigt15,
                _rowPriceText(context),
                HotelConst.sizedBoxHeigt20,
                const TextlargeBold(text: HotelConst.detail_row_title),
                HotelConst.sizedBoxHeigt15,
                _rowSpaceEvenly(),
                HotelConst.sizedBoxHeigt20,
                _rowDescriptionReviews(context),
                HotelConst.sizedBoxHeigt15,
                _columunDescriptionText(context),
                HotelConst.sizedBoxHeigt15,
                ElevatedButtonHeight(
                    height: MediaQuery.of(context).size.height,
                    onPressed: () {},
                    text: HotelConst.detail_elevatedButton)
              ],
            ),
          )
        ],
      ),
    );
  }

  Text _columunDescriptionText(BuildContext context) {
    return Text(
      HotelConst.detail_column_loreimpus * 2,
      style: Theme.of(context).textTheme.subtitle2?.copyWith(
            color: HotelConst.color_grey,
          ),
      maxLines: 5,
      overflow: TextOverflow.fade,
    );
  }

  Row _rowDescriptionReviews(BuildContext context) {
    return Row(
      children: [
        Text(
          HotelConst.detail_row_description_title,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: HotelConst.color_blue, fontWeight: FontWeight.bold),
        ),
        HotelConst.sizedBoxWidht10,
        Text(
          HotelConst.detail_row_revirse_title,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
              color: HotelConst.color_grey, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Row _rowSpaceEvenly() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        ContainerColumunIconText(
            icon: Icon(
              Icons.bolt,
              color: HotelConst.color_blue,
              size: 30,
            ),
            text: HotelConst.detail_row_resto),
        ContainerColumunIconText(
            icon: Icon(
              Icons.sports_esports_rounded,
              color: HotelConst.color_blue,
              size: 30,
            ),
            text: HotelConst.detail_row_gym),
        ContainerColumunIconText(
            icon: Icon(
              Icons.stadium_sharp,
              color: HotelConst.color_blue,
              size: 30,
            ),
            text: HotelConst.detail_row_pool),
        ContainerColumunIconText(
            icon: Icon(
              Icons.bolt,
              color: HotelConst.color_red100,
              size: 30,
            ),
            text: HotelConst.detail_row_more),
      ],
    );
  }

  Row _rowPriceText(BuildContext context) {
    return Row(
      children: [
        Text(
          price,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: HotelConst.color_blue, fontWeight: FontWeight.bold),
        ),
        Text(
          priceText,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: HotelConst.color_grey),
        )
      ],
    );
  }

  SizedBox _stackImage(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / _imageHeight,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }

  Row _rowLocationText() {
    return Row(
      children: [
        const Icon(
          Icons.location_on_outlined,
        ),
        Text(locationText)
      ],
    );
  }

  Row _rowTitleStarText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextlargeBold(text: title),
        _cliprrectStarText(context),
      ],
    );
  }

  ClipRRect _cliprrectStarText(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          bottomLeft: HotelConst.radius10, topLeft: HotelConst.radius10),
      child: Container(
        color: HotelConst.color_blue,
        height: MediaQuery.of(context).size.height / 35,
        width: MediaQuery.of(context).size.width / 7,
        child: _rowStar(context),
      ),
    );
  }

  Row _rowStar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.star,
          color: HotelConst.color_amber,
          size: 20,
        ),
        Text(
          starText,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: Colors.white, fontSize: 12),
        )
      ],
    );
  }

  Positioned _PositinedIconLeft() {
    return const Positioned(
        bottom: 220,
        left: 10,
        child: ContainerBackGroundGrey(
            widget: Icon(
          Icons.arrow_left_sharp,
          color: HotelConst.color_white,
          size: 35,
        )));
  }

  Positioned _PositinedIconRight() {
    return const Positioned(
        bottom: 220,
        right: 10,
        child: ContainerBackGroundGrey(
            widget: Icon(
          Icons.flag,
          color: HotelConst.color_white,
        )));
  }
}

class ContainerColumunIconText extends StatelessWidget {
  const ContainerColumunIconText({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 12,
      width: MediaQuery.of(context).size.width / 4.4,
      decoration: BoxDecoration(
          color: HotelConst.color_green100,
          borderRadius: HotelConst.borderRadiusCircular10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          icon,
          Text(
            text,
            style: Theme.of(context).textTheme.subtitle2,
          )
        ],
      ),
    );
  }
}
