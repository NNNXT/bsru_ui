import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  final String phoneNumber;

  const Page3({required this.phoneNumber, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ใส่รหัสยืนยัน',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'รหัสยืนยันอยู่ในข้อความใน SMS ที่ส่งไปยังหมายเลขโทรศัพท์',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 40),
              Text(
                'เบอร์โทรศัพท์',
                style: TextStyle(fontSize: 20),
              ),
              TextField(
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
              Text('ยืนยันเบอร์โทรศัพท์'),
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
