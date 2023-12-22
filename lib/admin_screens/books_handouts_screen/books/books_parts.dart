
import 'package:e_learning_admin/admin_screens/open_pdf/open_pdf.dart';
import 'package:e_learning_admin/styles/color_manager.dart';
import 'package:e_learning_admin/widgets/navigation.dart';
import 'package:flutter/material.dart';

class BooksPartsScreen extends StatelessWidget {
   final String bookName;
   BooksPartsScreen({super.key,required this.bookName});

  List<String> parts=[
    'Part 1',
    'Part 2',
    'Part 3',
    'Part 4',
  ] ;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: ()=>Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
            color: ColorManager.black,
            size: MediaQuery.of(context).size.height*0.03,
          ),
        ),
        title: Text(
          bookName,
          style: TextStyle(
            color: ColorManager.black,
            fontSize: MediaQuery.of(context).size.height*0.03,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: ColorManager.white,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.02,right: MediaQuery.of(context).size.height*0.02, bottom: MediaQuery.of(context).size.height*0.02),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.025,),

            Expanded(
              child: ListView.separated(
                itemBuilder: (context,index){
                  return Container(
                    height: MediaQuery.of(context).size.height*0.1,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,

                    decoration: BoxDecoration(
                      color: ColorManager.primary,
                      borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*0.02),
                    ),

                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height*0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            parts[index],
                            style: TextStyle(
                              color: ColorManager.white,
                              fontSize: MediaQuery.of(context).size.height*0.015,
                              fontWeight: FontWeight.w600,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: ColorManager.white,
                            size: MediaQuery.of(context).size.height*0.03,
                          ),
                        ],
                      ),
                    ),

                  );
                },
                separatorBuilder: (context,index){
                  return SizedBox(height: MediaQuery.of(context).size.height*0.01,);
                },
                itemCount: parts.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
