
import 'package:e_learning_admin/styles/color_manager.dart';
import 'package:flutter/material.dart';

class AssignmentsScreen extends StatelessWidget {
  const AssignmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.02),
        child: Column(
          children: [
            Text(
              'Assignments',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height*0.03,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorManager.primary,
        onPressed: (){},
        child: Icon(
          Icons.upload_file,
          color: ColorManager.white,
        ),
      ),
    );
  }
}
