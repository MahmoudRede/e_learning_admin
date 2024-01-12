import 'package:e_learning_admin/admin_screens/open_pdf/open_pdf.dart';
import 'package:e_learning_admin/business_logic/app_cubit/app_cubit.dart';
import 'package:e_learning_admin/business_logic/app_cubit/app_states.dart';
import 'package:e_learning_admin/styles/color_manager.dart';
import 'package:e_learning_admin/widgets/navigate_to.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MaterialScreen extends StatelessWidget {
  final String title;
  final String image;
  const MaterialScreen({super.key,required this.title,required this.image});

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<AppCubit,AppStates>(
        listener: (context,state){

        },
        builder: (context,state){
          var cubit = AppCubit.get(context);
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  title,style: TextStyle(
                  color: ColorManager.black,
                ),
                ),
              ),
              body: Container(
                  color: ColorManager.white,
                  child: Column(
                    children: [
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: 1/.7,
                          children: List.generate(
                            10,(index) => GestureDetector(
                            onTap: (){
                              if(title=='Pdf'){
                                navigateTo(context, const OpenPdf(pdfUrl: 'https://firebasestorage.googleapis.com/v0/b/elearningapp-4adde.appspot.com/o/Handout-1.pdf?alt=media&token=b6746ae1-ea26-4554-8167-22878f5d085b'));
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: MediaQuery.of(context).size.height*0.015,
                                  vertical: MediaQuery.of(context).size.height*0.01
                              ),
                              decoration: BoxDecoration(
                                  color: ColorManager.primary,
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.height*0.02
                                  )
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Image(
                                      height: MediaQuery.of(context).size.height*0.06,
                                      width: MediaQuery.sizeOf(context).height*0.06,
                                      image:  AssetImage(image),
                                    ),

                                    SizedBox(height: MediaQuery.of(context).size.height*0.02,),

                                    Text(
                                      '$title ${index+1}',style: TextStyle(
                                        color: ColorManager.white,
                                        fontSize: MediaQuery.of(context).size.height*0.025,
                                        fontWeight: FontWeight.w500
                                    ),
                                    )
                                  ]
                              ),
                            ),
                          ),
                          ),
                        ),
                      )
                    ],
                  )
              ),

              floatingActionButton: title=='Pdf'?FloatingActionButton(
                  backgroundColor: Colors.redAccent,
                  onPressed: (){
                    cubit.uploadPdf(
                        title: title,
                        section: 'section'
                    );
                  },
                  child: Icon(
                    Icons.upload_file_outlined,
                    color: ColorManager.white,
                  )
              ):title=='Audio'?FloatingActionButton(
                  backgroundColor: Colors.redAccent,
                  onPressed: (){

                  },
                  child: Icon(
                    Icons.audio_file,
                    color: ColorManager.white,
                  )
              ):FloatingActionButton(
                  backgroundColor: Colors.redAccent,
                  onPressed: (){

                  },
                  child: Icon(
                    Icons.video_call,
                    color: ColorManager.white,
                  )
              ),
            );
        },
    );
  }
}
