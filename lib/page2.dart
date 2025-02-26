import 'package:bsru_ui/page3.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    String phoneNumber = '';
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'เข้าสู่ระบบ OPENTALK',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'ใส่หมายเลขโทรศัพท์ของอุปกรณ์ที่คุณใช้อยู่ในขณะนี้',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 8),
              const Text(
                'โปรดอ่านและยอมรับข้อกำหนดการใช้บริการและนโยบายความเป็นส่วนตัวของ OPENCHAT ก่อนใส่หมายเลขโทรศัพท์แล้วแตะปุ่มไปต่อ',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 40),
              const Text(
                'เบอร์โทรศัพท์',
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                keyboardType: TextInputType.phone,
                onChanged: (value) {
                  phoneNumber = value;
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Page3(
                  phoneNumber: phoneNumber,
                ),
              ),
            );
          },
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
