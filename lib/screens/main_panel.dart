import 'package:flutter/material.dart';
import 'package:flutter_tex_example/screens/extended_sections.dart';

class MainPanel extends StatefulWidget {
  @override
  _MainPanelState createState() => _MainPanelState();
}

TextStyle title = TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold);
TextStyle type = TextStyle(fontSize: 18, color: Colors.white);
final double _borderRadius = 24;

class _MainPanelState extends State<MainPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Easy Math'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: RaisedButton(
                padding: EdgeInsets.all(0),
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.all(_borderRadius),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Poziom podstawowy',
                            style: title,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Matura z matematyki - ponad 2000 zadań',
                        style: type,
                      )
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xff388e3c), Color(0xff66bb6a)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                    // color: Colors.green
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: RaisedButton(
                padding: EdgeInsets.all(0),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ExtendedSections()));
                },
                child: Container(
                  padding: EdgeInsets.all(_borderRadius),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Poziom rozszerzony',
                            style: title,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Matura z matematyki - ponad 2000 zadań',
                        style: type,
                      )
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xff388e3c), Color(0xff66bb6a)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                    // color: Colors.green[400]
                  ),
                ),
              ),
            ),
          ],
        )
        // Column(
        //   children: <Widget>[
        //     RaisedButton(
        //       padding: EdgeInsets.all(20),
        //       elevation: 0,
        //       color: Colors.white,
        //       onPressed: () {},
        //       child: Container(
        //           alignment: Alignment.center,
        //           decoration: BoxDecoration(
        //             color: Colors.green,
        //           ),
        //           width: MediaQuery.of(context).size.width,
        //           height: MediaQuery.of(context).size.height * 0.2,
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: <Widget>[
        //               Text(
        //                 'Matura z matematyki',
        //                 style: title,
        //               ),
        //               Text(
        //                 'Kurs rozszerzony',
        //                 style: type,
        //               ),
        //             ],
        //           )),
        //     )
        //   ],
        // )
        );
  }
}
