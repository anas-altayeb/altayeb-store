// ignore_for_file: prefer_const_constructors, file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';

class AccountContainer extends StatelessWidget {
  final Icon _icon;
  final String text;

  const AccountContainer(this._icon, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: Colors.grey.shade400,
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              width: 10,
            ),
            _icon,
            SizedBox(
              width: 7,
            ),
            Container(
              width: 200,
              child: Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            SizedBox(
              width: 120,
            ),
            Icon(
              Icons.arrow_forward,
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
