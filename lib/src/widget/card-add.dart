import 'package:challenge_flutter_nav_nuwe/src/configuration/app_styles.dart';
import 'package:flutter/material.dart';

class CardAdd extends StatefulWidget {
  const CardAdd({Key? key}) : super(key: key);

  @override
  _CardAddState createState() => _CardAddState();
}

class _CardAddState extends State<CardAdd> {
  int count = 4;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      width: 63,
      decoration: BoxDecoration(
          color: AppStyles.backgroundCard,
          borderRadius: BorderRadius.circular(50)),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Icon(
        Icons.add,
        size: 40,
        color: AppStyles.primaryColor,
      ),
    );
  }
}
