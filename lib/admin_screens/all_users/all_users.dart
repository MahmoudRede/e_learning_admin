import 'package:e_learning_admin/admin_screens/all_users/course_students.dart';
import 'package:e_learning_admin/admin_screens/all_users/single_user.dart';
import 'package:e_learning_admin/admin_screens/all_users/widget/user_item.dart';
import 'package:e_learning_admin/business_logic/app_cubit/app_cubit.dart';
import 'package:e_learning_admin/business_logic/app_cubit/app_states.dart';
import 'package:e_learning_admin/constants/constants.dart';
import 'package:e_learning_admin/styles/color_manager.dart';
import 'package:e_learning_admin/widgets/navigate_to.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';


class AllUser extends StatefulWidget {
  final String courseName;
  final String groupName;
  const AllUser({Key? key,
    required this.courseName,
    required this.groupName,
  }) : super(key: key);

  @override
  State<AllUser> createState() => _AllUserState();
}

class _AllUserState extends State<AllUser> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit=AppCubit.get(context);
        Size size=MediaQuery.of(context).size;

        return Scaffold(

          appBar: AppBar(
            backgroundColor: ColorManager.white,
            elevation: 0.0,
            title: Text('All Users',
              style: TextStyle(
                  color: ColorManager.black,
                  fontWeight: FontWeight.w500,
                  fontSize: size.height*.027
              ),),
            titleSpacing: 0,

          ),


          body: SafeArea(
            child: Column(
              children: [


                SizedBox(height: MediaQuery.of(context).size.height*.02,),
                 Expanded(
                   child: ListView.separated(
                       itemBuilder: (context,index){
                          return GestureDetector(
                            onTap: (){
                              navigateTo(context, SingleUser(
                                  userModel: cubit.students[index],
                                  courseName: widget.courseName,
                                  groupName: widget.groupName,
                              ),
                              );
                            },
                            child:  UserItem(userModel: cubit.students[index]),
                          );
                       },
                       separatorBuilder: (context,index){
                         return SizedBox(height: MediaQuery.of(context).size.height*.02,);
                       },
                       itemCount: cubit.students.length
                   ),
                 ),
              ],
            )
          ),
        );
      },
    );
  }
}
