import 'package:flutter/material.dart';

class RequestsPage extends StatefulWidget {
  const RequestsPage({super.key});

  @override
  State<RequestsPage> createState() => _RequestsPageState();
}

class _RequestsPageState extends State<RequestsPage> {
  String selectedBloodGroup = 'All';
  String selectedCity = 'All';

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
          'Requests',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: selectedBloodGroup,
                    onChanged: (value) {
                      setState(() {
                        selectedBloodGroup = value ?? 'All';
                      });
                    },
                    items: const [
                      DropdownMenuItem(
                        value: 'All',
                        child: Text('All Blood Groups'),
                      ),
                      DropdownMenuItem(
                        value: 'A+',
                        child: Text('A+'),
                      ),
                      DropdownMenuItem(
                        value: 'B+',
                        child: Text('B+'),
                      ),
                      DropdownMenuItem(
                        value: 'AB+',
                        child: Text('AB+'),
                      ),
                      DropdownMenuItem(
                        value: 'O+',
                        child: Text('O+'),
                      ),
                    ],
                    decoration: const InputDecoration(
                      hintText: 'Select Blood Group',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: selectedCity,
                    onChanged: (value) {
                      setState(() {
                        selectedCity = value ?? 'All';
                      });
                    },
                    items: const [
                      DropdownMenuItem(
                        value: 'All',
                        child: Text('All Cities'),
                      ),
                      DropdownMenuItem(
                        value: 'Chennai',
                        child: Text('Chennai'),
                      ),
                      DropdownMenuItem(
                        value: 'Mumbai',
                        child: Text('Mumbai'),
                      ),
                      DropdownMenuItem(
                        value: 'Delhi',
                        child: Text('Delhi'),
                      ),
                    ],
                    decoration: const InputDecoration(
                      hintText: 'Select City',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const BloodDonationRequestCard(
                    bloodGroup: 'A+',
                    hospitalName: 'Apollo',
                    postedDate: '12-Nov-2024',
                    city: 'Chennai',
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFFE32D2D),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
        onTap: (index) {
          // Handle navigation based on the selected index
        },
      ),
    );
  }
}

class BloodDonationRequestCard extends StatelessWidget {
  final String bloodGroup;
  final String hospitalName;
  final String postedDate;
  final String city;

  const BloodDonationRequestCard({
    super.key,
    required this.bloodGroup,
    required this.hospitalName,
    required this.postedDate,
    required this.city,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Blood Group: $bloodGroup',
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Hospital: $hospitalName',
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Posted on: $postedDate',
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'City: $city',
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle donation button press
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFE32D2D),
                minimumSize: const Size.fromHeight(40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text(
                'Donate',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}