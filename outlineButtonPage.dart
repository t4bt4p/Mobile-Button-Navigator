import 'package:flutter/material.dart';

class OutlineButtonPage extends StatelessWidget {
  const OutlineButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // ส่วนประกอบของหน้า OutlineButtonPage มี Appbar กับ Body
      appBar: AppBar( // ส่วนประกอบของ AppBar กำหนดสีพื้นหลังเป็นสีส้ม และกำหนดข้อความ Title เป็น OutlineButtonPage
        backgroundColor: Colors.orange,
        title: const Text('OutlineButtonPage'),
      ),
      body: Center( // ส่วนประกอบของ Body
        child: Column( // สร้าง Column
          mainAxisAlignment: MainAxisAlignment.center,   // สั่งให้ Column อยู่ตรงกลางจอ
          children: <Widget>[
            const Text('This the page opened by OutlinedButton'), // สั่งให้แสดงข้อความ This the page opened by OutlinedButton
            OutlinedButton( // ปุ่มเส้นขอบ
              onPressed: () {Navigator.pop( context);}, // เมื่อกดปุ่มจะสั่งให้ Navigator.pop(context) ก็คือทำลายสิ่งที่พึ่ง push (จากการ Push หน้าที่เปิดอยู่) และกลับไปยังหน้าก่อนหน้า
              child: const Text("opened Outlined Page"), // สั่งให้แสดงข้อความ opened Outlined Page
              style: OutlinedButton.styleFrom( // กำหนดรูปแบบของปุ่มเส้นขอบ
                foregroundColor: Colors.orange, // กำหนดสีของข้อความเป็นสีส้ม
                side: const BorderSide(color: Colors.orange, width: 1), // กำหนดสีของเส้นขอบเป็นสีส้ม และกำหนดความหนาของเส้นขอบเป็น 1
              ),
            ),
          ],
        ),
      ),
    );
  }
}
