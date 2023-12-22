// import 'package:e_learning/business_logic/global_cubit/global_cubit.dart';
// import 'package:e_learning/presentation/styles/app_size_config.dart';
// import 'package:e_learning/presentation/styles/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_audio_waveforms/flutter_audio_waveforms.dart';
//
// class AudioScreen extends StatefulWidget {
//   const AudioScreen({super.key});
//
//   @override
//   State<AudioScreen> createState() => _AudioScreenState();
// }
//
// class _AudioScreenState extends State<AudioScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//         body: WillPopScope(
//           onWillPop: ()=> GlobalCubit.get(context).pausePlayer(context),
//           child: ListView.separated(
//               itemBuilder: (context,index){
//                 return Container(
//                   margin: const EdgeInsets.all(10),
//                   padding: EdgeInsets.symmetric(
//                       vertical: SizeConfig.height*0.02,
//                       horizontal: SizeConfig.height*0.02
//                   ),
//                   width: double.infinity,
//                   height: SizeConfig.height*0.08,
//                   decoration: BoxDecoration(
//                     color: Colors.grey.withOpacity(.2),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             const Icon(
//                                 Icons.audio_file
//                             ),
//                             Text('Audio ${index+1}',style: TextStyle(
//                               color: ColorManager.black,
//                               fontWeight: FontWeight.w500,
//                               fontSize: SizeConfig.headline4Size,
//                             )),
//                             const Spacer(),
//                             Container(
//                               height: SizeConfig.height*0.04,
//                               width: SizeConfig.height*0.04,
//                               decoration: BoxDecoration(
//                                 color: ColorManager.primary,
//                                 borderRadius: BorderRadius.circular(50),
//                               ),
//                               child: IconButton(
//                                 onPressed: (){
//                                   GlobalCubit.get(context).test==''?
//                                   GlobalCubit.get(context).audioPlayerFunction(url: 'https://firebasestorage.googleapis.com/v0/b/elearningapp-4adde.appspot.com/o/mixkit-classic-alarm-995.wav?alt=media&token=abb9b36e-0992-4df5-a818-b0fe1cbc8cff').then((value) {
//                                     setState(() {
//                                       GlobalCubit.get(context).test='1';
//                                     });
//                                   }) :
//                                   GlobalCubit.get(context).test=='0'?
//                                   GlobalCubit.get(context).player.resume().then((value) {
//                                     setState(() {
//                                       GlobalCubit.get(context).test='1';
//                                     });
//                                   }):
//                                   GlobalCubit.get(context).player.pause().then((value) {
//                                     setState(() {
//                                       GlobalCubit.get(context).test='0';
//                                     });
//                                   });
//
//                                 },
//                                 icon:  Icon(
//                                   GlobalCubit.get(context).test=='0'|| GlobalCubit.get(context).test==''? Icons.play_arrow_sharp:Icons.stop,
//                                   color: ColorManager.white,
//                                   size: SizeConfig.height*0.019
//                                   ,
//                                 ),
//                               ),
//                             ),
//                             SizedBox(width: SizeConfig.height*0.05,),
//                           ],
//                         ),
//
//                       ]
//                   ),
//                 );
//               },
//               separatorBuilder: (context,index){
//                 return SizedBox(height: SizeConfig.height*0.01,);
//               },
//               itemCount: 11
//           ),
//         )
//     );
//   }
// }
