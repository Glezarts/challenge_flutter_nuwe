import 'package:challenge_flutter_nav_nuwe/src/configuration/app_styles.dart';
import 'package:flutter/material.dart';

class CardCircular extends StatefulWidget {
  final String image;
  final int color;
  const CardCircular({Key? key, required this.image, required this.color})
      : super(key: key);

  @override
  _CardCircularState createState() => _CardCircularState();
}

class _CardCircularState extends State<CardCircular> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 63,
      height: 63,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color(widget.color),
          borderRadius: BorderRadius.circular(50),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            widget.image,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}

class BorderGradient extends StatefulWidget {
  final String image;
  final int color;
  const BorderGradient({Key? key, required this.image, required this.color})
      : super(key: key);

  @override
  _BorderGradientState createState() => _BorderGradientState();
}

class _BorderGradientState extends State<BorderGradient> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      width: 63,
      height: 63,
      decoration: BoxDecoration(
        gradient: AppStyles.gradientButton,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color(widget.color),
          borderRadius: BorderRadius.circular(50),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            widget.image,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
