import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListView2(),
  ));
}

class ListView2 extends StatelessWidget {
  var title = [
    'Data1',
    'data2',
    'data3',
    'data4',
    'data5',
    'data6',
    'data7',
    'data8',
    'data9',
    'data10'
  ];
  var subti = [20, 30, 40, 50, 60, 70, 80, 90, 100, 110];
  var icons = [
    Icons.abc_outlined,
    Icons.ac_unit_outlined,
    Icons.ac_unit_rounded,
    Icons.abc_sharp,
    Icons.access_alarm,
    Icons.access_alarm_outlined,
    Icons.ac_unit_sharp,
    Icons.access_alarms_rounded,
    Icons.access_alarms_sharp,
    Icons.access_time_sharp,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView2"),
        ),
        body: ListView(
          children: List.generate(
              10,
              (index) => Card(
                    child: ListTile(
                      title: Text(title[index]),
                      subtitle: Text('${subti[index]}'),
                      leading: Icon(icons[index]),
                    ),
                  )),
        ));
  }
}
