import 'package:flutter/material.dart';

class MarkedAssignmentScreen extends StatelessWidget {
  const MarkedAssignmentScreen({super.key});

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
                  fontSize:  MediaQuery.sizeOf(context).height*0.03,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
