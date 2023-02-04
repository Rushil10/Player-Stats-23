import 'package:player_stats_23/utlis/CustomColors.dart';
import 'package:flutter/material.dart';

class PotentialRating extends StatelessWidget {
  final potential;
  final cardWidth;
  const PotentialRating({Key? key, this.potential, this.cardWidth})
      : super(key: key);

  Color bgColor() {
    if (potential >= 90) {
      const color = darkGreen;
      return color;
    } else if (potential >= 80) {
      const color = green;
      return color;
    } else if (potential >= 70) {
      const color = lightGreen;
      return color;
    } else if (potential >= 50) {
      const color = yellow;
      return color;
    } else {
      const color = red;
      return color;
    }
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Container(
      width: queryData.size.width * cardWidth,
      height: queryData.size.width * cardWidth,
      decoration: BoxDecoration(color: bgColor()),
      child: Center(
        child: Text(
          potential.toString(),
          style: TextStyle(fontSize: ratingFont, fontWeight: ratingFontWeight),
        ),
      ),
    );
  }
}
