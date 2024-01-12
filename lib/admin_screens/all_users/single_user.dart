import 'package:e_learning_admin/business_logic/app_cubit/app_cubit.dart';
import 'package:e_learning_admin/business_logic/app_cubit/app_states.dart';
import 'package:e_learning_admin/data/models/user_model.dart';
import 'package:e_learning_admin/styles/color_manager.dart';
import 'package:e_learning_admin/widgets/default_button.dart';
import 'package:e_learning_admin/widgets/default_form_field.dart';
import 'package:e_learning_admin/widgets/text_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleUser extends StatelessWidget {
  final UserModel userModel;
  final String courseName;
  final String groupName;
  const SingleUser({Key? key,
    required this.userModel,
    required this.courseName,
    required this.groupName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){

      },
      builder: (context,state){
        var cubit=AppCubit.get(context);
        Size size =MediaQuery.of(context).size;
        return Scaffold(

          // title
          appBar: AppBar(
            backgroundColor: ColorManager.white,
            elevation: 0.0,
            title: Text('singleUser',
              style: TextStyle(
                  color: ColorManager.black,
                  fontWeight: FontWeight.w500,
                  fontSize: size.height*.025
              ),),
            titleSpacing: 0,

          ),

          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.height*.02
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    CircleAvatar(
                      backgroundImage:const NetworkImage('https://img.freepik.com/free-photo/medium-shot-boy-posing-with-graduation-background_23-2150319916.jpg?w=740&t=st=1705043786~exp=1705044386~hmac=69ee3364554d89449b14bc567bdfd25d018ace504d2bf27eafc009d1a98c92a0'),
                      radius: MediaQuery.of(context).size.height*.1,
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height*.03,),

                    /// Name
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('Name',
                        style: textManager(color: ColorManager.black,fontWeight: FontWeight.w500),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height*.01,),

                    TextFormField(
                      decoration: InputDecoration(
                        hintText: userModel.name,
                        iconColor: ColorManager.primary,
                        enabled: false,
                        hintStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.height*0.02,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: const BorderSide(
                              color: Colors.black
                            )
                        ),
                      ),


                    ),

                    SizedBox(height: MediaQuery.of(context).size.height*.03,),

                    /// Email
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('Email',
                        style: textManager(color: ColorManager.black,fontWeight: FontWeight.w500),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height*.01,),

                    TextFormField(
                      decoration: InputDecoration(
                        hintText: userModel.email,
                        iconColor: ColorManager.primary,
                        enabled: false,
                        hintStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.height*0.02,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: const BorderSide(
                                color: Colors.black
                            )
                        ),
                      ),


                    ),

                    SizedBox(height: MediaQuery.of(context).size.height*.03,),


                    /// Phone
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('Phone',
                        style: textManager(color: ColorManager.black,fontWeight: FontWeight.w500),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height*.01,),

                    TextFormField(
                      decoration: InputDecoration(
                        hintText: userModel.phone,
                        iconColor: ColorManager.primary,
                        enabled: false,
                        hintStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.height*0.02,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: const BorderSide(
                                color: Colors.black
                            )
                        ),
                      ),


                    ),

                    SizedBox(height: MediaQuery.of(context).size.height*.03,),

                    /// Course
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('Course',
                        style: textManager(color: ColorManager.black,fontWeight: FontWeight.w500),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height*.01,),

                    TextFormField(
                      decoration: InputDecoration(
                        hintText: userModel.course,
                        iconColor: ColorManager.primary,
                        enabled: false,
                        hintStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.height*0.02,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: const BorderSide(
                                color: Colors.black
                            )
                        ),
                      ),


                    ),

                    SizedBox(height: MediaQuery.of(context).size.height*.03,),

                    /// Group
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('Group',
                        style: textManager(color: ColorManager.black,fontWeight: FontWeight.w500),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height*.01,),

                    TextFormField(
                      decoration: InputDecoration(
                        hintText: userModel.group,
                        iconColor: ColorManager.primary,
                        enabled: false,
                        hintStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.height*0.02,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: const BorderSide(
                                color: Colors.black
                            )
                        ),
                      ),


                    ),


                    SizedBox(height: MediaQuery.of(context).size.height*.03,),

                    DefaultButton(
                        color: ColorManager.red,
                        text: 'Delete User',
                        onPressed: (){
                          cubit.deleteUser(
                              userId: userModel.id,
                              courseName: courseName,
                              groupName: groupName,
                          ).then((value) {
                            Navigator.pop(context);
                          });
                        }
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height*.03,),

                  ],
                ),
              ),
            ),
          ),

        );

      },
    );
  }
}
