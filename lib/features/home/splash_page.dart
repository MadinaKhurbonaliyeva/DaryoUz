import 'package:daryo_uz_project/features/home/presentation/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Center(
                child: Image(
                  image: AssetImage('assets/image/Daryo_uz.png'),
                ),
              ),
              Expanded(
                  child: Text(
                    'Daryo',
                    style: TextStyle(fontSize: 40),
                  ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Hodisalar. Faktlar. Qahramonlar./Mamlakatimiz va dunyoning asosiy yangiliklari',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
