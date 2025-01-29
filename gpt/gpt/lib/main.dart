import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black87, Colors.black],
            ),
          ),
          child: Stack(
            children: [
              // Enhanced Profile Section
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            color: Colors.white24,
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            radius: 52,
                            backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/128133561?v=4'),
                          ),
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                            boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 3)],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'ID: 223029809',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
              // Unified Button Styling
              Positioned(
                bottom: 20,
                left: 20,
                child: _buildActionButton(
                  icon: Icons.mic,
                  onPressed: () {},
                ),
              ),
              Positioned(
                bottom: 20,
                right: 20,
                child: _buildActionButton(
                  icon: Icons.close,
                  onPressed: () {},
                ),
              ),
              Positioned(
                top: 40,
                right: 20,
                child: _buildActionButton(
                  icon: Icons.filter_alt_rounded,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton({required IconData icon, required VoidCallback onPressed}) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(30),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(30),
        splashColor: Colors.white24,
        hoverColor: Colors.white12,
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 6,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Icon(icon, color: Colors.white70, size: 28),
        ),
      ),
    );
  }
}
