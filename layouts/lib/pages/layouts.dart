import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Layouts extends StatelessWidget {
  const Layouts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Layouts in Flutter"),
        ),
        body: Column(
          children: [
            Container(
              child: Text("Container, Col 1"),
              height: 100,
              color: Colors.blue,
              width: MediaQuery.of(context).size.width * 1,
              alignment: Alignment.center,
            ),
            Row(
              children: [
                Container(
                  child: Text("Container, Col 2, Row 1"),
                  height: 100,
                  width: MediaQuery.of(context).size.width * 0.5,
                  color: Colors.red,
                  alignment: Alignment.center,
                ),
                Container(
                  height: 100,
                  child: Text("Container, Col 2 Row 2"),
                  width: MediaQuery.of(context).size.width * 0.5,
                  color: Colors.yellow,
                  alignment: Alignment.center,
                )
              ],
            ),
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width * 1,
              child: Text("Sizedbox, Col 3"),
            ),
            ResponsiveGridRow(children: [
              ResponsiveGridCol(
                lg: 12,
                child: Container(
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.purple,
                  child: Text('Responsive Grid Col 1',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Container(
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.green,
                  child: Text("Responsive Grid Col 2, Row 1",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Container(
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.orange,
                  child: Text("Responsive Grid Col 2, Row 2",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                ),
              ),
            ]),
          ],
        ));
  }
}
