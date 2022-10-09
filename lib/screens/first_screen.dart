

import 'package:flutter/material.dart';
import 'package:flutter_clock_ui/clocks/clock.dart';

class FirstTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return ListView(
     children: [
       SizedBox(
         height: 85,
       ),
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 40),
         child: Clock(),
       ),

     ],
   );
  }
}