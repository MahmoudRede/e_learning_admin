import 'package:e_learning_admin/admin_screens/books_handouts_screen/books/books_name.dart';
import 'package:e_learning_admin/admin_screens/books_handouts_screen/view/speaking_screen.dart';
import 'package:e_learning_admin/admin_screens/books_handouts_screen/view/tracks_screen.dart';
import 'package:e_learning_admin/constants/constants.dart';
import 'package:e_learning_admin/styles/color_manager.dart';

import 'package:e_learning_admin/widgets/navigation.dart';
import 'package:flutter/material.dart';

class IeltsCourseScreen extends StatelessWidget {

   IeltsCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List actions = [
          ()=>customPushNavigator(context, const BooksNameScreen(title: 'Handouts',)),
          ()=>customPushNavigator(context, const SpeakingScreen()),
          ()=>customPushNavigator(context, const TracksScreen()),
          (){},

    ];
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: ()=>Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
            color: ColorManager.black,
            size: MediaQuery.sizeOf(context).height*0.03,
          ),
        ),
        title: Text(
          'IELTS Course',
          style: TextStyle(
            color: ColorManager.black,
            fontSize:  MediaQuery.sizeOf(context).height*0.025,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: ColorManager.white,
      ),
      body: Padding(
        padding: EdgeInsets.only(left:  MediaQuery.sizeOf(context).height*0.02,
            right:  MediaQuery.sizeOf(context).height*0.02,
            bottom:  MediaQuery.sizeOf(context).height*0.02),
        child: Column(
          children: [
            SizedBox(height:  MediaQuery.sizeOf(context).height*0.025,),

            Expanded(
              child: ListView.separated(
                itemBuilder: (context,index){
                  return InkWell(
                    onTap: actions[index],
                    child: Container(
                      height:  MediaQuery.sizeOf(context).height*0.1,
                      width:  MediaQuery.sizeOf(context).width,
                      alignment: Alignment.center,

                      decoration: BoxDecoration(
                        color: ColorManager.primary,
                        borderRadius: BorderRadius.circular( MediaQuery.sizeOf(context).height*0.02),
                      ),

                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal:  MediaQuery.sizeOf(context).height*0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              ieltsCourseSections[index],
                              style: TextStyle(
                                color: ColorManager.white,
                                fontSize:  MediaQuery.sizeOf(context).height*0.015,
                                fontWeight: FontWeight.w600,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: ColorManager.white,
                              size:  MediaQuery.sizeOf(context).height*0.03,
                            ),
                          ],
                        ),
                      ),

                    ),
                  );
                },
                separatorBuilder: (context,index){
                  return SizedBox(height:  MediaQuery.sizeOf(context).height*0.01,);
                },
                itemCount: ieltsCourseSections.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
