import 'package:flutter/material.dart';

class ElevatedButtonPage extends StatelessWidget {
  const ElevatedButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // ส่วนประกอบของหน้า ElevatedButtonPage มี Appbar กับ Body
      appBar: AppBar( // ส่วนประกอบของ AppBar 
        backgroundColor: Colors.blueGrey, // กำหนดสีพื้นหลังเป็นสีน้ำเงินเทา
        title: const Text('Elevated Button Page'), // กำหนดข้อความ Title เป็น Elevated Button Page
      ),
      body: Center( // ส่วนประกอบของ Body
        child: Column( // สร้าง Column
          mainAxisAlignment: MainAxisAlignment.center, // สั่งให้ Column อยู่ตรงกลางจอ
          children: <Widget>[
            const Text('This the page opened by ElevateButtonPage'), // สั่งให้แสดงข้อความ This the page opened by ElevateButtonPage
            ElevatedButton(
              onPressed: () {Navigator.pop( context);}  ,// เมื่อกดปุ่มจะสั่งให้ Navigator.pop(context) ก็คือทำลายสิ่งที่พึ่ง push (จากการ Push หน้าที่เปิดอยู่) และกลับไปยังหน้าก่อนหน้า
              child: const Text(
                "opened Evevate Page", // สั่งให้แสดงข้อความ opened Evevate Page
                style: TextStyle(color: Colors.blueGrey), // กำหนดสีของข้อความเป็นสีน้ำเงินเทา
              ),
            ),
          ],
        ),
      ),
    );
  }
}
