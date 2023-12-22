import 'package:flutter/material.dart';

class MarksScreen extends StatelessWidget {
  const MarksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all( MediaQuery.sizeOf(context).height*0.02),
        child: Column(
          children: [
            Text(
              'Marked Assignments',
              style: TextStyle(
                  fontSize:  MediaQuery.sizeOf(context).height*0.015,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
