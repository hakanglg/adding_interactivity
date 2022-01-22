import 'package:flutter/material.dart';

class ButtonAndLabel extends StatefulWidget {
  ButtonAndLabel({Key? key}) : super(key: key);

  @override
  _ButtonAndLabelState createState() => _ButtonAndLabelState();
}

class _ButtonAndLabelState extends State<ButtonAndLabel> {
  int _favoriteCount = 11;

  void _toggleFavorite() {
    setState(() {
      _favoriteCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Wrap(
        alignment: WrapAlignment.end,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          GestureDetector(
            onTap: _toggleFavorite,
            child: Icon(
              Icons.star_rate,
              color: Colors.red,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4),
            child: Text(_favoriteCount.toString()),
          )
        ],
      ),
    );
  }
}
