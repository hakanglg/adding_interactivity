import 'package:flutter/material.dart';

import '../companents/button_label.dart';
import '../constants/string_constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: buildAppBar(),
        body: ListView(
          children: [
            imageSection(context),
            titleSection(context),
            buttonSection(context),
            textSection(context)
          ],
        ),
      ),
    );
  }

  Padding textSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
      child: Text(
        text,
        softWrap: true,
      ),
    );
  }

  Padding buttonSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButton(context, icon: Icons.call, label: "CALL"),
          _buildButton(context, icon: Icons.near_me, label: "ROUTE"),
          _buildButton(context, icon: Icons.share, label: "SHARE")
        ],
      ),
    );
  }

  Wrap _buildButton(BuildContext context,
      {required String label, required IconData icon}) {
    return Wrap(
      direction: Axis.vertical,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 3,
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        Container(
            child: Text(
          label,
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: Colors.blue),
        ))
      ],
    );
  }

  Padding titleSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
      child: Row(
        children: [
          Expanded(flex: 5, child: titleAndSubtitle(context)),
          Expanded(
            flex: 1,
            child: ButtonAndLabel()
          )
        ],
      ),
    );
  }

  Column titleAndSubtitle(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titleText,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontWeight: FontWeight.bold)),
        SizedBox(height: 5),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.caption,
        )
      ],
    );
  }

  // Padding favIconAndText() {
  //   return
  // }

  Image imageSection(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.3,
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(title),
    );
  }
}
