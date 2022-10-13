import 'package:flutter/material.dart';

import '../paints/graph_painter.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      alignment: Alignment.topCenter,
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  Text(
                    'AVERAGE SLEEP',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        letterSpacing: 1.3,
                        color: Color(0xff5b6990)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '6.45h',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: Color(0xff5b6990)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'AVERAGE SLEEP',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        letterSpacing: 1.3,
                        color: Color(0xff5b6990)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '6.45h',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: Color(0xff5b6990)),
                  ),
                ],
              ),
              Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                    color: Color(0xfff0f5fb),
                    border: Border.all(width: 8, color: Color(0xffd3e1ed)),
                    borderRadius: BorderRadius.circular(3)),
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text(
                      "THIS WEEK",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.3,
                        color: Color(0xff5b6990),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 120,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: double.infinity,
                      child: CustomPaint(
                        foregroundPainter: GraphPainter(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const RecordItem(day: "SUNDAY"),
          const RecordItem(day: "MONDAY"),
          const RecordItem(day: "TUESDAY"),
          const RecordItem(day: "WEDNESDAY"),
          const RecordItem(day: "THURSDAY"),
          const RecordItem(day: "FRIDAY"),
          const RecordItem(day: "SATURDAY"),
        ],
      ),
    );
  }
}

class RecordItem extends StatelessWidget {
  final String day;

  const RecordItem({
    Key? key,
    required this.day,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Color(0xffdde9f7), width: 1.5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            day,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff5b6990)),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: const [
              Text(
                "01/21/2022",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.3,
                  color: Color(0xff5b6990),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              Expanded(
                child: Text(
                  "45.3 MINUTES",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.3,
                    color: Color(0xff5b6990),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
