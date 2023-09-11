import 'package:flutter/material.dart';


import 'package:food_config/screen/login.dart';
import 'package:food_config/screen/register.dart';





class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/logo.png",width: 400,height: 350,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
                  child: SizedBox(
                    child: ElevatedButton.icon(
                        icon: const Icon(Icons.person_add),
                        label: const Text('สร้างบัญชีผู้ใช้'),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const  RegisterScreen(),));
                        }),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
                  child: SizedBox(
                    child: ElevatedButton.icon(
                        icon: const Icon(Icons.login),
                        label: const Text('เข้าสู่ระบบ'),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                        }),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
