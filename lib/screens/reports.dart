import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:csv/csv.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:v2_sales_report_old/model.dart';

class ReportList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: ResponsiveGridList(
          desiredItemWidth: width * 0.3 < 350 ? 350 : width * 0.3,
          minSpacing: 20,
          children: [
            ReportCard("Order Reports"),
            ReportCard("Master Data"),
          ],
        ),
      ),
    );
  }
}

class ReportCard extends StatelessWidget {
  final String cardName;
  ReportCard(this.cardName);

  @override
  Widget build(BuildContext context) {
    String groupId = Provider.of<Model>(context).groupId;
    return InkWell(
      onTap: () {
        print("clicked report button");
        print(groupId);
        downloadExcel();
      },
      child: Container(
        height: 150,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: new LinearGradient(
            colors: [Colors.lightBlueAccent, Colors.blueAccent],
            begin: Alignment.topLeft,
          ),
        ),
        child: Column(
          children: [
            Icon(
              Icons.download_sharp,
              color: Colors.white,
              size: 60,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              '''${Provider.of<Model>(context).groupId} $cardName ''',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void downloadExcel() async {
    var columns = new List();
    final response =
        await http.get("https://jsonplaceholder.typicode.com/photos");
    if (response.statusCode == 200) {
      columns = json.decode(response.body) as List;
      print(columns);
    } else {
      print('Failed to load photos');
    }

    var rows = new List();
    rows.add(columns);
    final res = ListToCsvConverter().convert(rows);

    // try {
    //   String url = "data:application/octet-stream;charset=utf-8;,$res";
    //   html.AnchorElement anchorElement = new html.AnchorElement(href: url);
    //   anchorElement.setAttribute("download", "report.csv");
    //   anchorElement.click();
    // } catch (e) {
    //   print(e);
    // }
  }
}
