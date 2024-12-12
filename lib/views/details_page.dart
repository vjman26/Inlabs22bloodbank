import 'package:flutter/material.dart';
import '../widgets/info_row.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE32D2D),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Details',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gomathi Ganesan',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('10 units'),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'A+',
                    style: TextStyle(
                      color: Color(0xFFE32D2D),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const InfoRow(label: 'Age', value: '20 yrs'),
            const InfoRow(label: 'Contact', value: '9234578627'),
            const InfoRow(label: 'Gender', value: 'M'),
            const SizedBox(height: 16),
            const InfoRow(label: 'Hospital name', value: 'Apollo'),
            const InfoRow(label: 'State', value: 'Tamilnadu'),
            const InfoRow(label: 'District', value: 'Chennai'),
            const InfoRow(label: 'City', value: 'Chennai'),
            const InfoRow(label: 'Last date', value: '12-10-2024'),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE32D2D),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Text(
                  'Click here to donate',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.location_on, color: Colors.red, size: 30),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.phone, color: Colors.blue, size: 30),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.phone_bluetooth_speaker_outlined, color: Colors.green, size: 30),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// widgets/info_row.dart
