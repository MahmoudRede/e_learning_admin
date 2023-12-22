
import 'package:e_learning_admin/admin_screens/books_handouts_screen/homw_work_tabs/assignmentScreen/assginments.dart';
import 'package:e_learning_admin/admin_screens/books_handouts_screen/homw_work_tabs/marked_assignment/marked_assignment.dart';
import 'package:e_learning_admin/admin_screens/books_handouts_screen/homw_work_tabs/marks/marks_screen.dart';
import 'package:e_learning_admin/styles/color_manager.dart';
import 'package:flutter/material.dart';

class HomeWorkScreen extends StatelessWidget {
  const HomeWorkScreen({super.key});

  static bool pinned = true;
  static bool snap = false;
  static bool floating = false;
  static var searchController = TextEditingController();
  static var pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          /// appbar
          appBar: AppBar(
              title: Text('Home Work',
                  style: TextStyle(
                    fontSize:  MediaQuery.of(context).size.height*0.03,
                    color: ColorManager.black
                  )),
              backgroundColor: ColorManager.white,
              titleSpacing: 0.0,
              bottom: TabBar(
                  indicatorColor: ColorManager.primary,
                  unselectedLabelColor: ColorManager.grey,
                  labelColor: ColorManager.primary,
                  tabs: [
                    Tab(
                        child: Text('Assignment',
                            style: TextStyle(
                              fontSize:  MediaQuery.sizeOf(context).height*0.03,
                            ))),
                    Tab(
                        child: Text('Marked Assignment',
                            style: TextStyle(
                              fontSize:  MediaQuery.sizeOf(context).height*0.03,
                            ))),
                    Tab(
                        child: Text('Marks',
                            style: TextStyle(
                              fontSize:  MediaQuery.sizeOf(context).height*0.03,
                            ))),
                  ])),

          /// tabview
          body:  TabBarView(
            children: [
              AssignmentsScreen(),
              MarkedAssignmentScreen(),
              MarksScreen(),
            ],
          )),
    );
  }
}
