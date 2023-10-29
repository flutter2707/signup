import 'package:flutter/material.dart';
import 'package:signup/pages/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const Page2(),));
    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Center(
              child: Image.asset('assets/image/img.png'),
            )
          ],
        ),
      ),
    );
  }
}
