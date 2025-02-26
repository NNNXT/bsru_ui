import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

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
                'เข้าสู่ระบบ OPENTALK',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'ใส่หมายเลขโทรศัพท์ของอุปกรณ์ที่คุณใช้อยู่ในขณะนี้',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 8),
              Text(
                'โปรดอ่านและยอมรับข้อกำหนดการใช้บริการและนโยบายความเป็นส่วนตัวของ OPENCHAT ก่อนใส่หมายเลขโทรศัพท์แล้วแตะปุ่มไปต่อ',
                style: TextStyle(fontSize: 14, color: Colors.grey),
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
