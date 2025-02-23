import 'package:flutter/material.dart';
import 'donor_details_page.dart';

class DonorListPage extends StatelessWidget {
  final List<Map<String, String>> donors = [
    {'name': 'Rahat', 'bloodGroup': 'O+'},
    {'name': 'Ridoy', 'bloodGroup': 'A+'},
    {'name': 'Kazi', 'bloodGroup': 'B-'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Donor List")),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemCount: donors.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.blue,
            elevation: 2.0,
            margin: EdgeInsets.all(4.0),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    donors[index]['name']!,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Blood Group: ${donors[index]['bloodGroup']}",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
