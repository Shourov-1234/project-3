import 'package:flutter/material.dart';
import 'donor_details_page.dart';

class DonorListPage extends StatelessWidget {
  final List<Map<String, String>> donors = [
    {'name': 'Tabib', 'bloodGroup': 'O+'},
    {'name': 'Rahim', 'bloodGroup': 'A+'},
    {'name': 'Karim', 'bloodGroup': 'B-'},
    // Add more donors as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Donor List")),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Adjust the number of columns in the grid
          crossAxisSpacing: 10.0, // Spacing between columns
          mainAxisSpacing: 10.0, // Spacing between rows
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
              elevation: 4.0,
              margin: EdgeInsets.all(8.0),
              color: Colors.red, // Set the background color of the card to red
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    donors[index]['name']!,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Default color for name
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Blood Group: ${donors[index]['bloodGroup']}",
                    style: TextStyle(
                        color: Colors.white), // White text for blood group
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
