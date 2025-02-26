import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  final String phoneNumber;

  const Page3({required this.phoneNumber, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'ใส่รหัสยืนยัน',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                'รหัสยืนยันอยู่ในข้อความใน SMS ที่ส่งไปยังหมายเลขโทรศัพท์ $phoneNumber',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 40),
              const Text(
                'รหัสยืนยัน',
                style: TextStyle(fontSize: 20),
              ),
              const TextField(
                keyboardType: TextInputType.phone,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {},
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('ยืนยัน'),
              SizedBox(width: 16),
              Icon(
                Icons.arrow_forward_ios,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
