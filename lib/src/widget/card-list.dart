import 'package:challenge_flutter_nav_nuwe/src/configuration/app_styles.dart';
import 'package:flutter/material.dart';

class CardList extends StatefulWidget {
  final title;
  final int num;
  const CardList({Key? key, required this.title, required this.num}) : super(key: key);

  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  final listText = [
    '🎉 General',
    'Mobile',
    'Front-end',
    'Back-end',
    'DataScience'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppStyles.backgroundCard,
          borderRadius: BorderRadius.circular(5)),
      margin: EdgeInsets.only(top: 50),
      width: 250,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                widget.title,
                style:
                    TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                  itemCount: listText.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 9),
                      child: Text(
                        listText[index],
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
