import 'package:e_learning_admin/styles/color_manager.dart';
import 'package:e_learning_admin/widgets/text_manager.dart';
import 'package:flutter/material.dart';


class UserItem extends StatelessWidget {

  // final UserModel userModel;

  const UserItem({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.height*.02,
        right: MediaQuery.of(context).size.height*.02,
        bottom: MediaQuery.of(context).size.height*.0,
      ),
      child: Material(
        elevation: 2,
        color: ColorManager.primary.withOpacity(.7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.height*.02,
            right: MediaQuery.of(context).size.height*.02,
            top: MediaQuery.of(context).size.height*.02,
            bottom: MediaQuery.of(context).size.height*.02,
          ),

          decoration: BoxDecoration(
            color: ColorManager.black.withOpacity(.8),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://cdn.elearningindustry.com/wp-content/uploads/2020/10/advantages-and-disadvantages-of-online-learning.jpg'),
                    radius: MediaQuery.of(context).size.height*.03,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.height*.01,),
                  Expanded(
                    child: Text('userModel.name',
                      style: textManager(color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
