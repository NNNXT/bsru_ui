import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 128),
            Text(
              'ยินดีต้อนรับสู่ OPENTALK',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 8),
            Text(
              'พบ พูดคุย และแลกเปลี่ยนข้อมูลข่าวสารกับกลุ่มเพื่อน\nที่ชอบอะไรเหมือนๆ กัน',
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('เข้าสู่ระบบ'),
        ),
      ),
    );
  }
}
