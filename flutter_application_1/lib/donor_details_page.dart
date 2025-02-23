import 'package:flutter/material.dart';

class DonorDetailsPage extends StatelessWidget {
  final Map<String, String> donor;

  DonorDetailsPage({required this.donor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Donor Details")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name: ${donor['name']}", style: TextStyle(fontSize: 18)),
            Text("Blood Group: ${donor['bloodGroup']}",
                style: TextStyle(fontSize: 18)),
            Text("Mobile: ---", style: TextStyle(fontSize: 18)),
            Text("Address: ---", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
