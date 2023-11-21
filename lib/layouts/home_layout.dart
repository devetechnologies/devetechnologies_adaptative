import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Column(
              children: [Icon(Icons.add_home_outlined), Text('Label 1')],
            ),
            Column(
              children: [Icon(Icons.man_4), Text('Label 1')],
            ),
            Column(
              children: [Icon(Icons.woman_2), Text('Label 1')],
            )
          ],
        ),
      ),
    );
  }
}
