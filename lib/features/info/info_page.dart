import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: SizedBox(
            height: 40,
            child: Row(
              children: [
                Image.network(
                  'https://daryo.uz/static/2023/Sevara/large.jpg',
                  width: 140,
                ),
                const SizedBox(
                  width: 12,
                ),
                const Expanded(
                  child: Text(
                      'Banan kaliy, magniy, kletchatka, B va C guruhi vitaminlari singari foydali moddalarni o‘z ichiga oladi. Bundan tashqari, tarkibida charchoq va depressiya bilan kurashishda ahamiyatli bo‘lgan tabiiy shakar bo‘ladi.'),
                ),

              ],
            ),
          ),
        );
      },
    );
  }
}
