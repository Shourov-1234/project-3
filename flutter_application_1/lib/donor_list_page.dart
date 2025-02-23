import 'package:flutter/material.dart';
import 'donor_details_page.dart';

class DonorListPage extends StatelessWidget {
  final List<Map<String, String>> donors = [
    {'name': 'Tabib', 'bloodGroup': 'O+'},
    {'name': 'Rahim', 'bloodGroup': 'A+'},
    {'name': 'Karim', 'bloodGroup': 'B-'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Donor List")),
      body: ListView.builder(
        itemCount: donors.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(donors[index]['name']!),
            subtitle: Text("Blood Group: ${donors[index]['bloodGroup']}"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DonorDetailsPage(donor: donors[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
