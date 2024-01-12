abstract class AppStates{


}

class InitialState extends AppStates{}

class GetAllStudentsSuccessState extends AppStates {}
class GetAllStudentsErrorState extends AppStates {}
class GetAllStudentsLoadingState extends AppStates {}

class DeleteUserLoadingState extends AppStates {}
class DeleteUserSuccessState extends AppStates {}
class DeleteUserErrorState extends AppStates {}

class UploadPDFSuccessState extends AppStates {}
class UploadPDFLoadingState extends AppStates {}
class UploadPDFErrorState extends AppStates {}

class GetPDFSuccessState extends AppStates {}
class GetPDFLoadingState extends AppStates {}
class GetPDFErrorState extends AppStates {}