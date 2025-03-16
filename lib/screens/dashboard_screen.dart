import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Car-Key Dashboard',
            style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              leading: Icon(Icons.home, color: Colors.purple),
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.purple),
              title: Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.purple),
              title: Text('Profile'),
              onTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Container(
              width: 380,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Row(
                        children: [
                          Icon(Icons.directions_car,
                              color: Colors.purple, size: 40),
                          SizedBox(width: 8),
                          Text('Current Car',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16)),
                        ],
                      ),
                      SizedBox(height: 2),
                      Text('2024 Lexus LX',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text('Status:',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14)),
                          SizedBox(width: 5),
                          Icon(Icons.circle, color: Colors.green, size: 12),
                          SizedBox(width: 5),
                          Text('Online',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 14)),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                            'assets/images/driver.png'), // Replace with actual image asset
                      ),
                      SizedBox(height: 5),
                      Text('Mrs Habiba',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.red, size: 16),
                          SizedBox(width: 5),
                          Text(
                            'Lagos, Nigeria',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildFeatureCard(Icons.wifi_tethering, 'Proximity'),
                const SizedBox(width: 40),
                _buildFeatureCard(Icons.directions_car, 'My Cars'),
                const SizedBox(width: 40),
                _buildFeatureCard(Icons.security, 'Security'),
              ],
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.purple, width: 4),
                  color: Colors.white,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('START',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      Divider(color: Colors.black, thickness: 1, height: 10),
                      Text('POWER',
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIconButton(Icons.lock_open, 'Unlock', Colors.green),
                const SizedBox(width: 50),
                _buildIconButton(Icons.lock, 'Lock', Colors.red),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIconButton(Icons.ac_unit, 'A/C', Colors.purple),
                const SizedBox(width: 40),
                _buildIconButton(Icons.car_repair, 'Trunk', Colors.purple),
                const SizedBox(width: 40),
                _buildIconButton(Icons.car_rental, 'Share', Colors.purple),
              ],
            ),
            const SizedBox(height: 2),
            const Divider(thickness: 0.1),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Connected',
                style: TextStyle(color: Colors.green, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 70, color: Colors.purple),
        const SizedBox(height: 5),
        Text(label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildIconButton(IconData icon, String label, Color color) {
    return Column(
      children: [
        Icon(icon, size: 70, color: color),
        const SizedBox(height: 5),
        Text(label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
