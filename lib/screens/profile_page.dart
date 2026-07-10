import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [

              const SizedBox(height: 30),

              const CircleAvatar(
                radius: 60,
                child: Icon(
                  Icons.person,
                  size: 70,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Profil Mahasiswa",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              Card(
                child: ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text("Nama"),
                  subtitle: const Text("Mikha Ester Florencia Simamora"),
                ),
              ),

              Card(
                child: ListTile(
                  leading: const Icon(Icons.badge),
                  title: const Text("NIM"),
                  subtitle: const Text("2303310928"),
                ),
              ),

              Card(
                child: ListTile(
                  leading: const Icon(Icons.school),
                  title: const Text("Program Studi"),
                  subtitle: const Text("Informatika"),
                ),
              ),

              Card(
                child: ListTile(
                  leading: const Icon(Icons.apartment),
                  title: const Text("Universitas"),
                  subtitle: const Text("Universitas Potensi Utama"),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}