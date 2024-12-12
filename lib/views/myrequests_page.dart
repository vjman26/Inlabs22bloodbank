import 'package:flutter/material.dart';

class MyRequestsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('My Requests'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Add Request Button
            ElevatedButton.icon(
              onPressed: () {
                // Navigate to add request form
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              icon: Icon(Icons.add, color: Colors.white),
              label: Text(
                'Add Requests',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20),

            // List of Requests
            Expanded(
              child: ListView(
                children: [
                  _buildRequestCard(
                    hospitalName: 'Meenakshi Multispeciality Hospital',
                    location: 'Chennai, Tamil Nadu',
                    date: '6 Nov 2024',
                  ),
                  _buildRequestCard(
                    hospitalName: 'Apollo First Aid Hospital',
                    location: 'Chennai, Tamil Nadu',
                    date: '12 Oct 2024',
                  ),
                  _buildRequestCard(
                    hospitalName: 'Lifeline Multi-Specialty Hospital',
                    location: 'Chennai, Tamil Nadu',
                    date: '26 Dec 2024',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to Build Individual Request Cards
  Widget _buildRequestCard({
    required String hospitalName,
    required String location,
    required String date,
  }) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hospital Name
            Text(
              hospitalName,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),

            // Location
            Text(
              location,
              style: TextStyle(color: Colors.grey[600]),
            ),
            SizedBox(height: 8),

            // Date
            Text(
              'Posted on: $date',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }
}
