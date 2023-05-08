import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  _color([int cor = 0xffebdfcc]) => Color(cor);

  final blueColor = 0xff021b2b;
  final orangeColor = 0xffff0841;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color(blueColor),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: _color(),
                radius: 52,
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/profile-green.png'),
                  radius: 50,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Jaime Barbosa',
                style: TextStyle(
                  fontFamily: 'BrunoAceSC',
                  fontSize: 20,
                  color: _color(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Desenvolvedor Flutter',
                style: TextStyle(
                  fontFamily: 'BrunoAceSC',
                  fontSize: 18,
                  color: _color(),
                  letterSpacing: 1,
                ),
              ),
              Divider(
                color: _color(),
              ),
              Card(
                color: _color(orangeColor),
                child: ListTile(
                  leading: Icon(Icons.phone, color: _color(blueColor)),
                  title: const Text(
                    '+55 85 99999-9999',
                    style: TextStyle(
                        fontFamily: 'BrunoAceSC', fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                color: _color(orangeColor),
                child: ListTile(
                  leading: Icon(Icons.email, color: _color(blueColor)),
                  title: const Text(
                    'teste@gmail.com',
                    style: TextStyle(
                        fontFamily: 'BrunoAceSC', fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
