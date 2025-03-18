import 'package:flutter/material.dart';

class ProfileSettingsScreen extends StatelessWidget {
  const ProfileSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/dashboard');
          },
        ),
        title: const Text(
          'Profile & Settings',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildProfileSection(),
          const SizedBox(height: 20),
          _buildSettingsList(),
        ],
      ),
    );
  }

  Widget _buildProfileSection() {
    return Column(
      children: [
        const CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/images/driver.png'),
        ),
        const SizedBox(height: 10),
        const Text(
          'Mrs Habiba',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const Text(
          'habiba0@carkey.com',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Edit Profile'),
        ),
      ],
    );
  }

  Widget _buildSettingsList() {
    return Column(
      children: [
        _buildSettingsItem('Keys Management', Icons.vpn_key),
        _buildSettingsItem('Security', Icons.lock),
        _buildSettingsItem('Proximity', Icons.wifi_tethering),
        _buildSettingsItem('Car Type', Icons.directions_car,
            trailing:
                const Text('Key Start', style: TextStyle(color: Colors.grey))),
        _buildSettingsItem('Locking Mode', Icons.lock_outline),
        _buildSettingsItemWithSwitch('Show Trunk Button', Icons.car_repair),
        _buildSettingsItem('Self Start Timer', Icons.timer),
        _buildSettingsItem('Device Info', Icons.info),
        const Divider(),
        _buildSettingsItem('Logout', Icons.exit_to_app, textColor: Colors.red),
      ],
    );
  }

  Widget _buildSettingsItem(String title, IconData icon,
      {Widget? trailing, Color? textColor}) {
    return ListTile(
      leading: Icon(icon, color: Colors.purple),
      title: Text(title, style: TextStyle(color: textColor ?? Colors.black)),
      trailing: trailing ??
          const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: () {},
    );
  }

  Widget _buildSettingsItemWithSwitch(String title, IconData icon) {
    return ListTile(
      leading: Icon(icon, color: Colors.purple),
      title: Text(title),
      trailing: Switch(value: true, onChanged: (bool value) {}),
    );
  }
}
