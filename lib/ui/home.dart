import 'package:flutter/material.dart';

import 'login.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login App"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Login();
                  },
                ),
              );
            },
            icon: const Icon(Icons.logout_rounded),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hai !",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              name,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
    );
  }
}
