import 'package:flutter/material.dart';
import 'package:flutter_aten/providers/user_provider.dart';
import 'package:provider/provider.dart'; // นำเข้า UserProvider
import 'another_page.dart'; // นำเข้า AnotherPage

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<UserProvider>(
              builder: (context, userProvider, _) => Text(
                'AccessToken: ${userProvider.accessToken}',
                style: const TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 16),
            Consumer<UserProvider>(
              builder: (context, userProvider, _) => Text(
                'RefreshToken: ${userProvider.refreshToken}',
                style: const TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // navigate to AnotherPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AnotherPage()),
                );
              },
              child: const Text('Go to Another Page'),
            ),
          ],
        ),
      ),
    );
  }
}
