import 'package:challenge_flutter_nav_nuwe/src/widget/card-add.dart';
import 'package:challenge_flutter_nav_nuwe/src/widget/card-circular.dart';
import 'package:challenge_flutter_nav_nuwe/src/widget/card-list.dart';
import 'package:challenge_flutter_nav_nuwe/src/configuration/app_styles.dart';
import 'package:challenge_flutter_nav_nuwe/src/widget/navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> images = [
    'assets/icon-nuwe2.png',
    'assets/icon-github.png',
    'assets/icon-aws.png'
  ];

  final color = [0xff2E353F, 0xffffffff, 0xffffffff];

  int _selectedIndex = 0;
  List<String> titleContent = ['NUWE', 'GITHUB', 'AMAZON WEB SERVICES'];
  final destination =
      NavigationRailDestination(icon: Icon(Icons.add_a_photo), label: Text(''));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundDark,
      body: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 5),
            child: Column(
              children: [
                Expanded(
                  child: NavigationRail(
                    backgroundColor: Colors.transparent,
                    selectedIndex: _selectedIndex,
                    onDestinationSelected: (int index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    labelType: NavigationRailLabelType.selected,
                    destinations: <NavigationRailDestination>[
                      NavigationRailDestination(
                        icon: CardCircular(
                          image: images[0],
                          color: color[0],
                        ),
                        selectedIcon:
                            BorderGradient(image: images[0], color: color[0]),
                        label: Text(''),
                      ),
                      NavigationRailDestination(
                        icon: CardCircular(
                          image: images[1],
                          color: color[1],
                        ),
                        selectedIcon: BorderGradient(
                          image: images[1],
                          color: color[1],
                        ),
                        label: Text(''),
                      ),
                      NavigationRailDestination(
                        icon: CardCircular(
                          image: images[2],
                          color: color[2],
                        ),
                        selectedIcon: BorderGradient(
                          image: images[2],
                          color: color[2],
                        ),
                        label: Text(''),
                      ),
                      NavigationRailDestination(
                        icon: GestureDetector(
                            child: CardAdd(),
                            onTap: () {
                              setState(() {
                                if (_selectedIndex < 10) {
                                  return <NavigationRailDestination>[]
                                      .insert(_selectedIndex, destination);
                                }
                              });
                            }),
                        selectedIcon: CardAdd(),
                        label: Text(''),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (_selectedIndex == 0)
            CardList(
              num: _selectedIndex,
              title: titleContent[0],
            )
          else if (_selectedIndex == 1)
            CardList(
              num: _selectedIndex,
              title: titleContent[1],
            )
          else if (_selectedIndex == 2)
            CardList(
              num: _selectedIndex,
              title: titleContent[2],
            )
        ],
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }
}
