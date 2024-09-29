import 'package:flutter/material.dart';
import 'package:margo_liveview/pages/pages.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Hintergrundbild
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.jpg'), // Passe den Pfad an
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Der Inhalt der Seite
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),

              // Logo
              Center(
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(20.0), // Hier die Rundung anpassen
                  child: Image.asset(
                    'assets/logo.png', // Passe den Pfad an dein Logo an
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover, // Um das Bild in den Rahmen anzupassen
                  ),
                ),
              ),

              const SizedBox(height: 50),

              // Suchfeld
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Gib deine Sendungsnummer ein',
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Suchbutton
              ElevatedButton(
                onPressed: () {
                  // Navigation zu einer anderen Seite
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Button-Farbe
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: const Text(
                  "Suchen",
                  style: TextStyle(fontSize: 18),
                ),
              ),

              const Spacer(),

              // Footer
              const Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Text(
                  "Designed by Nicolas Mack",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
