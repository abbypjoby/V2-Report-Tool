import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model.dart';

class FetchInputs extends StatefulWidget {
  @override
  _FetchInputsState createState() => _FetchInputsState();
}

class _FetchInputsState extends State<FetchInputs> {
  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.of(context).size.width >= 700;
    return Container(
      constraints: BoxConstraints(
        maxHeight: 300,
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Flex(
          direction: isScreenWide ? Axis.horizontal : Axis.vertical,
          children: [
            Expanded(
              child: TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  Provider.of<Model>(context, listen: false).setGroupId(value);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Group ID',
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Expanded(
              child: TextField(
                onChanged: (value) {
                  Provider.of<Model>(context, listen: false)
                      .setStartDate(value);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Start Date (yyyy-mm-dd)',
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Expanded(
              child: TextField(
                onChanged: (value) {
                  Provider.of<Model>(context, listen: false).setEndDate(value);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'End Date (yyyy-mm-dd)',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
