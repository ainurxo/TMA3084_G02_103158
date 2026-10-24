import 'package:flutter/material.dart';

void main() {
  runApp(const CafeMenuApp());
}

class CafeMenuApp extends StatelessWidget {
  const CafeMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Moonsveil',
      debugShowCheckedModeBanner: false,
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MOONs DELIGHTS'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 33, 21, 47),
        foregroundColor: const Color.fromARGB(255, 247, 246, 246),
      ),
      body: const SafeArea(
        child: Column(
          children: [
            MenuCard('americano.jpg', 'Americano'),
            MenuCard('spanishLatte.jpg', 'Spanish Latte'),
            MenuCard('mocha.jpg', 'Mocha'),
            MenuCard('lavenderCake.jpg', 'Lavender Cake'),
            MenuCard('butter.jpg', 'Butter TTeok'),
          ],
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard(this.file, this.name, {super.key});

  final String file;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: const Color.fromARGB(255, 167, 139, 206),
      margin: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Image.asset(
              'assets/images/$file',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                width: 100,
                height: 100,
                color: Colors.brown.shade200,
                child: const Icon(Icons.coffee, size: 48, color: Colors.white),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 30,
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
