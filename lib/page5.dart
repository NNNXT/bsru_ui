import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  final String id;
  final String name;
  final String gender;
  const Page5({
    required this.id,
    required this.name,
    required this.gender,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(150),
              child: Image.network(
                id,
                width: 150,
                height: 150,
                fit: BoxFit.fill,
              ),
            ),
            Text(name),
            Text(gender),
            gender == 'Male'
                ? const Icon(
                    Icons.male,
                    color: Colors.blue,
                  )
                : const Icon(
                    Icons.female,
                    color: Colors.pink,
                  ),
          ],
        ),
      ),
    );
  }
}
