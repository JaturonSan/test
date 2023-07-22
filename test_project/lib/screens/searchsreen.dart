import 'package:flutter/material.dart';
import 'package:test_project/screens/reservescreen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final formKey = GlobalKey<FormState>();
  final searchCon = TextEditingController();
  String searchValue = ''; 
  OutlineInputBorder border = const OutlineInputBorder();
  List data = [['แยก ปตท. ถ.123','32/24 ต.พญาเย็น อ.ปากช่อง จ.นครราชสีมา',0.3,1],['แยก ปตท. ถ.123','32/24 ต.พญาเย็น อ.ปากช่อง จ.นครราชสีมา',1.2,3],['แยก ปตท. ถ.123','32/24 ต.พญาเย็น อ.ปากช่อง จ.นครราชสีมา',1.0,3]];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          controller: searchCon,
          onSaved: (value) {
            searchValue = value!;
          },
          decoration: InputDecoration(
            border: border,
            labelText: 'ค้นหา',
            labelStyle: TextStyle(fontSize: 18, color: Colors.black,),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('ผลลัพธ์'),
              ListTile(
                leading: Icon(Icons.car_repair),
                title: Text(data[0][0]+' ${data[0][2]} km'+' ${data[0][3]} นาที'),
                subtitle: Text(data[0][1]),
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context){
                      return ReserveScreen(data[0][0],data[0][1],data[0][2],data[0][3]);
                    })
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.car_repair),
                title: Text(data[1][0]+' ${data[1][2]} km'+' ${data[1][3]} นาที'),
                subtitle: Text(data[1][1]),
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context){
                      return ReserveScreen(data[1][0],data[1][1],data[1][2],data[1][3]);
                    })
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.car_repair),
                title: Text(data[2][0]+' ${data[2][2]} km'+' ${data[2][3]} นาที'),
                subtitle: Text(data[2][1]),
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context){
                      return ReserveScreen(data[2][0],data[2][1],data[2][2],data[2][3]);
                    })
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}