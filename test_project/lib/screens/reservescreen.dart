import 'package:flutter/material.dart';

class ReserveScreen extends StatefulWidget {
  final String title;
  final String subtitle;
  final double distance;
  final int minute;
  const ReserveScreen(this.title, this.subtitle, this.distance, this.minute, {Key? key})
      : super(key: key);

  @override
  State<ReserveScreen> createState() => _ReserveScreenState(title: title, subtitle: subtitle, distance: distance, minute: minute);
}

class _ReserveScreenState extends State<ReserveScreen> {
  String title;
  String subtitle;
  double distance;
  int minute;
  _ReserveScreenState({required this.title, required this.distance, required this.minute, required this.subtitle});

  String type = '';
  late final date;
  String time = '';
  SizedBox box = SizedBox(height: 10,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('จุดชาร์จ')),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Icon(Icons.car_repair),
                title: Text('$title $distance km $minute นาที'),
                subtitle: Text(subtitle),
              ),
              box,
              Container(
                child: Column(
                  children: [
                    Text('เลือกชนิดหัวชาร์จ'),
                    Row(
                      children: [
                        ElevatedButton(
                      onPressed: () {
                        type = 'A';
                        print(type);
                      },
                      child: Text('Type A'),
                    ),
                    SizedBox(width: 15,),
                    ElevatedButton(
                      onPressed: () {
                        type = 'B';
                        print(type);
                      },
                      child: Text('Type B'),
                    ),
                    SizedBox(width: 15,),
                    ElevatedButton(
                      onPressed: () {
                        type = 'C';
                        print(type);
                      },
                      child: Text('Type C'),
                    ),
                      ],
                    ),
                  ],
                ),
              ),
              box,
              Container(
                child: Column(
                  children: [
                    Text('เลือกวันที่จอง'),
                    ElevatedButton(
                      onPressed: () {
                        final now = DateTime.now();
                        date = now;
                        print(date);
                      },
                      child: Row(
                        children: [
                          Icon(Icons.calendar_month),
                          Text('วันที่ปัจจุบัน'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              box,
              Container(
                child: Column(
                  children: [
                    ListTile(
                      title: Text('00:00 - 01:00'),
                      onTap: () {
                        time = '00:00 - 01:00';
                        print(time);
                      },
                    ),
                    ListTile(
                      title: Text('01:00 - 02:00'),
                      onTap: () {
                        time = '01:00 - 02:00';
                        print(time);
                      },
                    ),
                    ListTile(
                      title: Text('02:00 - 03:00'),
                      onTap: () {
                        time = '02:00 - 03:00';
                        print(time);
                      },
                    ),
                    ListTile(
                      title: Text('03:00 - 04:00'),
                      onTap: () {
                        time = '03:00 - 04:00';
                        print(time);
                      },
                    ),
                    ListTile(
                      title: Text('04:00 - 05:00'),
                      onTap: () {
                        time = '04:00 - 05:00';
                        print(time);
                      },
                    ),
                    ListTile(
                      title: Text('05:00 - 06:00'),
                      onTap: () {
                        time = '05:00 - 06:00';
                        print(time);
                      },
                    ),
                    ListTile(
                      title: Text('06:00 - 07:00'),
                      onTap: () {
                        time = '06:00 - 07:00';
                        print(time);
                      },
                    ),
                    ListTile(
                      title: Text('07:00 - 08:00'),
                      onTap: () {
                        time = '07:00 - 08:00';
                        print(time);
                      },
                    ),
                    ListTile(
                      title: Text('08:00 - 09:00'),
                      onTap: () {
                        time = '08:00 - 09:00';
                        print(time);
                      },
                    ),
                    ListTile(
                      title: Text('09:00 - 10:00'),
                      onTap: () {
                        time = '09:00 - 10:00';
                        print(time);
                      },
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print('จองที่ชาร์จชนิด $type ในวันที่ $date เวลา $time');
                }, 
                child: Text('จอง'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}