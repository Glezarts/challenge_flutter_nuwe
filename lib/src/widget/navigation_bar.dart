import 'package:challenge_flutter_nav_nuwe/src/configuration/app_styles.dart';
import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 79,
      decoration:
          BoxDecoration(color: AppStyles.backgroundBackgroundNavigation),
      child: Center(child: Image.asset('assets/icon-nuwe.png')),
    );
  }
}
