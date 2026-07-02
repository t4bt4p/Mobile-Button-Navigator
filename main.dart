import 'package:flutter/material.dart';
import 'package:flutter_application_navigator_btn/TextPage.dart';
import 'package:flutter_application_navigator_btn/outlineButtonPage.dart';
import 'package:flutter_application_navigator_btn/ElevateButtonPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomePage(), // <- ทำให้โหลด Class HomePage ในบรรทัดที่ 30 ขึ้นมา
    );
  }
}

// Metthod สำหรับเปิดแต่ละหน้า
void _navigatopage(BuildContext context, Widget page) { // การเรียกใช้งาน Metthod ต้องส่งค่า context และ page ที่ต้องการเปิด 
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
} // Navigator.push เป็นการเปิดหน้าใหม่ โดยใช้ page ที่แสดงผลจะขึนอยู่กับ Class ที่ส่งเข้ามา

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // ส่วนประกอบของหน้า HomePage ปัจจุบันมีสองส่วนคือ AppBar และ Body 
      appBar: AppBar(title: const Text('Flutter Button Demo')), // ส่วนประกอบของ AppBar สั่งให้ Title แสดงข้อความ Flutter Button Demo  
      body: Center( // ส่วนประกอบของ Body สั่งให้แสดงผลอยู่ตรงกลางของหน้าจอ
        child: Column( // สร้าง Column
          mainAxisAlignment: MainAxisAlignment.center, // สั่งให้ Column อยู่ตรงกลางจอ
          children: <Widget>[
            TextButton( // ปุ่มข้อความ 
              onPressed: () {
                _navigatopage(context, TextPage()); // เมื่อกดจะส่งค่า Class TextPage ไปให้ navigatopage เพื่อเปิดหน้า TextPage ขึ้นมา 
              },
              child: const Text( // สั่งให้แสดงข้อความ opened Text Page และกำหนดสีของข้อความเป็นสีเขียว 
                "opened Text Page",
                style: TextStyle(color: Colors.green),
              ),
            ),
            OutlinedButton( // ปุ่มเส้นขอบ
              onPressed: () {
                _navigatopage(context, OutlineButtonPage()); // เมื่อกดจะส่งค่า Class OutlineButtonPage ไปให้ navigatopage เพื่อเปิดหน้า OutlineButtonPage ขึ้นมา
              },
              child: const Text("opened Outlined Page"), // สั่งให้แสดงข้อความ opened Outlined Page 
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.orange, // กำหนดสีของข้อความเป็นสีส้ม
                side: const BorderSide(color: Colors.orange, width: 1), //กำหนดสีของเส้นขอบเป็นสีส้ม และกำหนดความหนาของเส้นขอบเป็น 1
              ),
            ),
            ElevatedButton( // ปุ่มยกสูง
              onPressed: () {
                _navigatopage(context, ElevatedButtonPage()); // เมื่อกดจะส่งค่า Class ElevatedButtonPage ไปให้ navigatopage เพื่อเปิดหน้า ElevatedButtonPage ขึ้นมา
              },
              child: const Text(
                "opened ElevatedButton Page", // สั่งให้แสดงข้อความ opened ElevatedButton Page
                style: TextStyle(color: Colors.blueGrey), // กำหนดสีของข้อความเป็นสีน้ำเงินเทา
              ),
            ),
          ],
        ),
      ),
    );
  }
}
