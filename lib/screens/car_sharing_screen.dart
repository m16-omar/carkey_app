import 'package:flutter/material.dart';

class CarSharingScreen extends StatefulWidget {
  const CarSharingScreen({super.key});

  @override
  State<CarSharingScreen> createState() => _CarSharingScreenState();
}

class _CarSharingScreenState extends State<CarSharingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Car Sharing Screen"),
      ),
      body: const Center(
        child: Text(
          "Car Sharing Screen",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
