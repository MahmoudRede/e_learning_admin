import 'package:e_learning_admin/admin_screens/add_courses/add_courses.dart';
import 'package:e_learning_admin/admin_screens/add_tasks/add_tasks.dart';
import 'package:e_learning_admin/admin_screens/admin_home/widget/admin_home_item.dart';
import 'package:e_learning_admin/admin_screens/all_users/all_users.dart';
import 'package:e_learning_admin/admin_screens/all_users/course_students.dart';
import 'package:e_learning_admin/admin_screens/books_handouts_screen/view/books_handouts.dart';
import 'package:e_learning_admin/admin_screens/free_note_screen/view/free_note_screen.dart';
import 'package:e_learning_admin/admin_screens/past_papers/past_papers.dart';
import 'package:e_learning_admin/admin_screens/user_request/user_request.dart';
import 'package:e_learning_admin/admin_screens/view_user_tasks/view_user_tasks.dart';
import 'package:e_learning_admin/styles/color_manager.dart';
import 'package:e_learning_admin/widgets/navigate_to.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../business_logic/app_cubit/app_cubit.dart';
import '../../business_logic/app_cubit/app_states.dart';
import '../payment_screens/payment_requests_screen.dart';


class AdminHome extends StatelessWidget {

  const AdminHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List onTaps = [
       ()=>navigateTo(context, const CourseStudent()),
       ()=>navigateTo(context, const UserRequest()),
       ()=>navigateTo(context, const BooksAndHandoutsScreen()),
       // ()=>navigateTo(context, const PastPapers()),
       ()=>navigateTo(context, const FreeNoteScreen()),
    ];

    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Admin Home',style: TextStyle(
                color: ColorManager.black,
                fontSize:  MediaQuery.of(context).size.height*.03
            ),
            )
          ),
          body: Column(
            children: [
              // title

              SizedBox(height:  MediaQuery.of(context).size.height*.015,),

              // list of features
              Expanded(
                child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context,index){
                      return AdminHomeItem(index: index, onTap: onTaps[index],);
                    },
                    separatorBuilder: (context,index){
                      return SizedBox(height:  MediaQuery.of(context).size.height*.03,);
                    },
                    itemCount: onTaps.length,
                ),
              ),
              SizedBox(height:  MediaQuery.of(context).size.height*.02,),
            ],
          ),
        );

        },
    );
  }
}
