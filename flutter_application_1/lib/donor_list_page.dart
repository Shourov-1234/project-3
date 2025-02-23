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
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: donors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DonorDetailsPage(donor: donors[index]),
                ),
              );
            },
            child: Card(
              color: Colors.blue,
              elevation: 4.0,
              margin: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    donors[index]['name']!,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text("Blood Group: ${donors[index]['bloodGroup']}",
                      style: TextStyle(
                        color: Colors.white,
                      ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
