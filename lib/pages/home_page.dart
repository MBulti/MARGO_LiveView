import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Greeting Section
                const Row(
                  children: [
                    Text(
                      "Guten Morgen",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.wb_sunny, color: Colors.orange, size: 28),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  "Ein neuer Tag, ein neues Glück – starte mit einem Lächeln und die Welt lächelt zurück.",
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                ),
                const SizedBox(height: 24),

                // Cards Section
                const Card(
                  elevation: 4,
                  child: ListTile(
                    leading: Icon(Icons.flag, color: Colors.orange),
                    title: Text(
                      "In Bearbeitung",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text("Geplant"),
                    trailing: Text("Eingegangen"),
                  ),
                ),
                const SizedBox(height: 16),

                const Row(
                  children: [
                    // Lieferzeitfenster card
                    Expanded(
                      child: Card(
                        elevation: 4,
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lieferzeitfenster",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "08:00 - 10:30",
                                style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.green,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text("Heute, 02.08.2024"),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 16),

                    // Bestellte Menge card
                    Expanded(
                      child: Card(
                        elevation: 4,
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bestellte Menge",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(
                                    Icons.oil_barrel,
                                    color: Colors.amber,
                                    size: 28,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    "2.500 Liter",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Text("Heizöl Schwefelarm nach"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // Image Section (instead of Map)
                Card(
                  elevation: 4,
                  child: Column(
                    children: [
                      const ListTile(
                        leading: Icon(Icons.circle, color: Colors.red, size: 10),
                        title: Text("Online"),
                        subtitle: Text("Letzte Aktualisierung: 02.08.2024 14:30 Uhr"),
                      ),
                      // Replace Google Map with Image
                      Image.asset(
                        'assets/demo_map.png', // Placeholder image path
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),

                // Contact Section
                Card(
                  elevation: 4,
                  child: ListTile(
                    leading: const Icon(Icons.person, color: Colors.purple),
                    title: const Text("Herr Mack"),
                    subtitle: const Text("Ihr Ansprechpartner"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.email, color: Colors.grey),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.phone, color: Colors.green),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                // Footer
                Center(
                  child: Text(
                    "Designed by Nicolas Mack",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
