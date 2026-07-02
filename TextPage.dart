import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // ส่วนประกอบของหน้า TextPage มี Appbar กับ Body
      appBar: AppBar( // ส่วนประกอบของ AppBar
        backgroundColor: Colors.green, // กำหนดสีพื้นหลังเป็นสีเขียว
        title: const Text('Text Button Page'), // กำหนดข้อความ Title เป็น Text Button Page
      ),
      body: Center( // ส่วนประกอบของ Body
        child: Column( // สร้าง Column
          mainAxisAlignment: MainAxisAlignment.center, // สั่งให้ Column อยู่ตรงกลางจอ
          children: <Widget>[
            const Text('This is the page opened by TextButton!'), // สั่งให้แสดงข้อความ This is the page opened by TextButton!
            TextButton(
              onPressed: ()  {Navigator.pop(context);}, // เมื่อกดปุ่มจะสั่งให้ Navigator.pop(context) ก็คือทำลายสิ่งที่พึ่ง push (จากการ Push หน้าที่เปิดอยู่) และกลับไปยังหน้าก่อนหน้า
              child: const Text("Go back")), // สั่งให้แสดงข้อความ Go back
          ],
        ),
      ),
    );
  }
}
