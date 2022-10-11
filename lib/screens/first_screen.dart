import 'package:flutter/material.dart';
import 'package:flutter_clock_ui/clocks/clock.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 85,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Clock(),
        ),
        const SizedBox(
          height: 85,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "ALARM TIME",
                  style: TextStyle(
                      color: Color(0xffff0863),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.3),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "06:12 PM",
                  style: TextStyle(
                    color: Color(0xff2d386b),
                    fontWeight: FontWeight.w700,
                    fontSize: 30
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "WAKE UP IN",
                  style: TextStyle(
                      color: Color(0xffff0863),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.3),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "08:00 AM",
                  style: TextStyle(
                      color: Color(0xff2d386b),
                      fontWeight: FontWeight.w700,
                      fontSize: 30
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
