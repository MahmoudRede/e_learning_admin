import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_learning_admin/admin_screens/all_users/all_users.dart';
import 'package:e_learning_admin/business_logic/app_cubit/app_states.dart';
import 'package:e_learning_admin/data/models/material_model.dart';
import 'package:e_learning_admin/data/models/user_model.dart';
import 'package:e_learning_admin/widgets/navigate_to.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AppCubit extends Cubit<AppStates> {

  AppCubit() : super(InitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  List<UserModel> students = [];

  Future<void> getAllStudents({
    required String courseName,
    required String groupName,
  }) async {
    emit(GetAllStudentsLoadingState());
    students = [];
    await FirebaseFirestore.instance
        .collection('students')
        .doc(courseName)
        .collection(groupName)
        .get()
        .then((value) {
      value.docs.forEach((element) {
        students.add(UserModel.fromMap(element.data()));
      });
      debugPrint(students[0].name);

      emit(GetAllStudentsSuccessState());
    }).catchError((error) {
      debugPrint('Error in getAllStudents is ${error.toString()}');
      emit(GetAllStudentsErrorState());
    });
  }

  /// delete confirmed user

  Future<void> deleteUser({
    required String userId,
    required String courseName,
    required String groupName,
  }) async {
    emit(DeleteUserLoadingState());

    // FirebaseAuth.instance.currentUser!.delete().then((value) {
    //   debugPrint("student deleted from fire auth");
    //   emit(DeleteUserSuccessState());
    //
    // }).catchError((error){
    //   debugPrint('Error when delete student from fire auth : ${error.toString()}');
    //   emit(DeleteUserErrorState());
    // });

    FirebaseFirestore.instance.collection('students')
        .doc(courseName)
        .collection(groupName)
        .doc(userId)
        .delete().then((value) {
      getAllStudents(
          courseName: courseName,
          groupName: groupName
      );
      emit(DeleteUserSuccessState());
      debugPrint('student Delete Success');
    }).catchError((error) {
      debugPrint('Error in delete student is ${error.toString()}');
      emit(DeleteUserErrorState());
    });
  }



  String url= "";

  bool isUpload=true;

  /// upload pdf and get PDF Free Notes
  Future uploadPdf({
    required String title,
    int index=0,
    required String section,
  })async{
    isUpload=true;
    emit(UploadPDFLoadingState());
    print('start upload');
    FilePickerResult? result=await FilePicker.platform.pickFiles();
    File pick= File(result!.files.single.path.toString());
    var file =pick.readAsBytesSync();
    isUpload=false;
    emit(UploadPDFSuccessState());
    String name =DateTime.now().millisecondsSinceEpoch.toString();
    // upload to firebase
    var pdfFile =  FirebaseStorage.instance.ref().child('test')
        .child('Section')
        .child('Pdf')
        .child('title')
        .child('1');

    UploadTask task= pdfFile.putData(file);
    TaskSnapshot snapshot=await task;
    url = await snapshot.ref.getDownloadURL();

    print(url);

    MaterialModel materialModel=MaterialModel(
      title: 'title',
      url: url,
    );

    await FirebaseFirestore.instance.collection('FreeNotes')
        .doc('section').collection('Pdf').add(materialModel.toMap()).then((value) {
      print('Upload Success');
      isUpload=true;
      emit(UploadPDFSuccessState());
    });

    }


    Future<void> getPdf({
     required String section,
    })async{

      emit(GetPDFLoadingState());
      await FirebaseFirestore.instance.collection('FreeNotes')
          .doc(section).collection('Pdf').get().then((value) {
        print('get Success');
        emit(GetPDFSuccessState());
      }).catchError((error) {
        debugPrint('Error in get pdf is ${error.toString()}');
        emit(GetPDFErrorState());
      });

    }



}