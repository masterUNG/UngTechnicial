import 'package:flutter/material.dart';
import 'package:ungtechnic/utility/my_constant.dart';
import 'package:ungtechnic/widgets/show_buttom.dart';
import 'package:ungtechnic/widgets/show_form.dart';
import 'package:ungtechnic/widgets/show_image.dart';
import 'package:ungtechnic/widgets/show_text.dart';
import 'package:ungtechnic/widgets/show_text_buttom.dart';

class Authen extends StatelessWidget {
  const Authen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(decoration: MyConstant().gradientBox(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              newHead(),
              ShowForm(
                hint: 'User:',
                iconData: Icons.person_outline,
                changeFunc: (String string) {},
              ),
              ShowForm(
                hint: 'Password:',
                iconData: Icons.lock_outline,
                obSecu: true,
                changeFunc: (String string) {},
              ),
              ShowButton(
                label: 'Login',
                pressFunc: () {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const ShowText(text: 'Non Account ? '),
                  ShowTextButton(
                    label: 'Create Account',
                    pressFunc: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  SizedBox newHead() {
    return SizedBox(
      width: 250,
      child: Row(
        children: [
          newImage(),
          ShowText(
            text: 'Login:',
            textStyle: MyConstant().h1Style(),
          ),
        ],
      ),
    );
  }

  SizedBox newImage() {
    return const SizedBox(
      width: 70,
      child: ShowImage(),
    );
  }
}
